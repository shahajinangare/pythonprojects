from flask import Flask, render_template, flash, redirect, url_for, session, request, logging
#from data import Articles
from flask_mysqldb  import MySQL
from wtforms import Form, StringField, TextAreaField, PasswordField, validators
from passlib.hash import sha256_crypt
from functools import wraps

app = Flask(__name__)

# Config MySQL
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'a'
app.config['MYSQL_DB'] = 'myflaskapp'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
# init MYSQL
mysql = MySQL(app)

#Articles = Articles()

# Index
@app.route('/')
def index():
    return render_template('home.html')


# About
@app.route('/about')
def about():
    return render_template('about.html')


# Articles
@app.route('/articles')
def articles():
    # Create cursor
    cur = mysql.connection.cursor()

    # Get articles
    #result = cur.execute("SELECT * FROM articles")
    #articles = cur.fetchall()

    #if result > 0:

    # call procedure
    cur.callproc('sp_get_articles', ([0]))
    articles = cur.fetchall()

    if len(articles) is not 0:
        return render_template('articles.html', articles=articles)
    else:
        msg = 'No Articles Found'
        return render_template('articles.html', msg=msg)
    # Close connection
    cur.close()


#Single Article
@app.route('/article/<string:id>/')
def article(id):
    # Create cursor
    cur = mysql.connection.cursor()

    # Get article
    #result = cur.execute("SELECT * FROM articles WHERE id = %s", [id])

    #article = cur.fetchone()

    # call procedure
    cur.callproc('sp_get_articles', ([id]))
    article = cur.fetchone()

    return render_template('article.html', article=article)


# Register Form Class
class RegisterForm(Form):
    name = StringField('Name', [validators.Length(min=1, max=50)])
    username = StringField('Username', [validators.Length(min=4, max=25)])
    email = StringField('Email', [validators.Length(min=6, max=50)])
    password = PasswordField('Password', [
        validators.DataRequired(),
        validators.EqualTo('confirm', message='Passwords do not match')
    ])
    confirm = PasswordField('Confirm Password')


# User Register
@app.route('/register', methods=['GET', 'POST'])
def register():
    form = RegisterForm(request.form)
    if request.method == 'POST' and form.validate():
        name = form.name.data
        email = form.email.data
        username = form.username.data
        password = sha256_crypt.encrypt(str(form.password.data))

        # Create cursor
        cur = mysql.connection.cursor()

        # Execute query
        #cur.execute("INSERT INTO users(id,name, email, username, password) VALUES(NULL,%s, %s, %s, %s)", (name, email, username, password))

        # Commit to DB
        #mysql.connection.commit()

        # call procedure
        result_args = cur.callproc('sp_ins_users', ([name, email, username, password]))
        result = cur.fetchall()

        # Close connection
        cur.close()
        if len(result) is 1:
            flash('You are now registered and can log in', 'success')
            return redirect(url_for('login'))
        else:
            flash('Username already exists', 'Fail')

    return render_template('register.html', form=form)


# User login
@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        # Get Form Fields
        username = request.form['username']
        password_candidate = request.form['password']

        # Create cursor
        cur = mysql.connection.cursor()

        # Get user by username -- inline code
        #result = cur.execute("SELECT * FROM users WHERE username = %s", [username])

        #if result > 0:

        # call procedure
        cur.callproc('sp_get_users',([username]))
        result = cur.fetchall()

        if len(result) is 1:
            # Get stored hash
            data = result[0]
            password = data['password']

            # Compare Passwords
            if sha256_crypt.verify(password_candidate, password):
                # Passed
                session['logged_in'] = True
                session['username'] = username

                flash('You are now logged in', 'success')
                return redirect(url_for('dashboard'))
            else:
                error = 'Invalid login'
                return render_template('login.html', error=error)
            # Close connection
            cur.close()
        else:
            error = 'Username not found'
            return render_template('login.html', error=error)

    return render_template('login.html')

# Check if user logged in
def is_logged_in(f):
    @wraps(f)
    def wrap(*args, **kwargs):
        if 'logged_in' in session:
            return f(*args, **kwargs)
        else:
            flash('Unauthorized, Please login', 'danger')
            return redirect(url_for('login'))
    return wrap

# Logout
@app.route('/logout')
@is_logged_in
def logout():
    session.clear()
    flash('You are now logged out', 'success')
    return redirect(url_for('login'))

# Dashboard
@app.route('/dashboard')
@is_logged_in
def dashboard():
    # Create cursor
    cur = mysql.connection.cursor()

    # Get articles inline query
    #result = cur.execute("SELECT * FROM articles")
    #articles = cur.fetchall()

    # call procedure
    cur.callproc('sp_get_articles', ([0]))
    articles = cur.fetchall()

    if len(articles) is not 0:
        return render_template('dashboard.html', articles=articles)
    else:
        msg = 'No Articles Found'
        return render_template('dashboard.html', msg=msg)
    # Close connection
    cur.close()

# Article Form Class
class ArticleForm(Form):
    title = StringField('Title', [validators.Length(min=1, max=200)])
    body = TextAreaField('Body', [validators.Length(min=30)])

# Add Article
@app.route('/add_article', methods=['GET', 'POST'])
@is_logged_in
def add_article():
    form = ArticleForm(request.form)
    if request.method == 'POST' and form.validate():
        title = form.title.data
        body = form.body.data
        o_code='';
        o_message='';
        # Create Cursor
        cur = mysql.connection.cursor()

        # Execute
        #cur.execute("INSERT INTO articles(title, body, author) VALUES(%s, %s, %s)",(title, body, session['username']))
        # Commit to DB
        #mysql.connection.commit()

        # call procedure
        result_args = cur.callproc('sp_ins_articles', ([0,title, body, session['username'],o_code,o_message]))
        result = cur.fetchall()

        #Close connection
        cur.close()
        if len(result) is not 0:
            flash('Article Created', 'success')
            return redirect(url_for('dashboard'))

    return render_template('add_article.html', form=form)


# Edit Article
@app.route('/edit_article/<string:id>', methods=['GET', 'POST'])
@is_logged_in
def edit_article(id):
    # Create cursor
    cur = mysql.connection.cursor()

    # Get article by id
    #result = cur.execute("SELECT * FROM articles WHERE id = %s", [id])

    #article = cur.fetchone()

    # call procedure
    cur.callproc('sp_get_articles', ([id]))
    article = cur.fetchone()

    cur.close()
    # Get form
    form = ArticleForm(request.form)

    # Populate article form fields
    form.title.data = article['title']
    form.body.data = article['body']

    if request.method == 'POST' and form.validate():
        title = request.form['title']
        body = request.form['body']
        o_code = '';
        o_message = '';

        # Create Cursor
        cur = mysql.connection.cursor()
        app.logger.info(title)
        # Execute
        #cur.execute ("UPDATE articles SET title=%s, body=%s WHERE id=%s",(title, body, id))
        # Commit to DB
        #mysql.connection.commit()

        # call procedure
        result_args = cur.callproc('sp_ins_articles', ([id,title, body, session['username'], o_code, o_message]))
        result = cur.fetchall()

        # Close connection
        cur.close()
        if len(result) is not 0:
            flash('Article Updated', 'success')
            return redirect(url_for('dashboard'))

    return render_template('edit_article.html', form=form)

# Delete Article
@app.route('/delete_article/<string:id>', methods=['POST'])
@is_logged_in
def delete_article(id):
    # Create cursor
    cur = mysql.connection.cursor()

    # Execute
    #cur.execute("DELETE FROM articles WHERE id = %s", [id])

    # Commit to DB
    #mysql.connection.commit()

    # call procedure
    result_args = cur.callproc('sp_del_articles', ([id]))
    result = cur.fetchall()

    # Close connection
    cur.close()
    if len(result) is not 0:
        flash('Article Deleted', 'success')
        return redirect(url_for('dashboard'))

if __name__ == '__main__':
    app.secret_key='secret123'
    app.run(debug=True)
