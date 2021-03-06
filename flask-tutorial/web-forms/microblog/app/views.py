from flask import render_template, flash, redirect
from app import app
from .forms import LoginForm, UserForm, RegistrationForm

@app.route('/')
@app.route('/index')

def index():
    user = {'nickname': 'Miguel'}
    posts = [
        {
            'author': {'nickname': 'John'},
            'body': 'Beautiful day in Portland!'
        },
        {
            'author': {'nickname': 'Susan'},
            'body': 'The Avengers movie was so cool!'
        }
    ]
    return render_template('index.html',
                           title='Home',
                           user=user,
                           posts=posts)

@app.route('/login', methods=['GET', 'POST'])
def login():
    form = LoginForm()
    if form.validate_on_submit():
        flash('Login requested for OpenID="%s", remember_me=%s' %
              (form.openid.data, str(form.remember_me.data)))
        return redirect('/index')
    return render_template('login.html',
                           title='Sign In',
                           form=form,
                           providers=app.config['OPENID_PROVIDERS'])

@app.route('/user', methods=['GET', 'POST'])
def user():
    form = UserForm()
    if form.validate_on_submit():
        flash('User Name = %s' % (form.username.data))
        return redirect('/index')
    return render_template('user.html',
                           title='User',
                           form=form)

@app.route('/register', methods=['GET', 'POST'])
def register():
    form = RegistrationForm()

    if not form.validate_on_submit():
        return render_template('register.html',
                           title='Registration',
                           form=form)

    #user = User(form.username.data, form.email.data,
    #    form.password.data)
    #db_session.add(user)

    flash('Thanks for registering')
    return redirect('/index')
