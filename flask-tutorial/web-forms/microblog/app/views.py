from flask import render_template
from app import app

@app.route('/')
@app.route('/index')
def index():
    user = {'nickname': 'Shahaji'}  # fake user
    posts = [  # fake array of posts
        {
            'author': {'nickname': 'Aarush'},
            'body': 'Beautiful day in Portland!'
        },
        {
            'author': {'nickname': 'Shalmali'},
            'body': 'The Avengers movie was so cool!'
        }
    ]
    return render_template('index.html',
                title='Home',
                user=user,
                posts=posts)


