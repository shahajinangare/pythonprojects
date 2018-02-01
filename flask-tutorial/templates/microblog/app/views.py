from flask import render_template
from app import app

@app.route('/')
@app.route('/index')
def index():
    user = {'nickname': 'Shahaji'}  # fake user
    posts = [  # fake array of posts
        {
            'author': {'nickname': 'Aarush'},
            'body': 'Beautiful day in Portland!',
            'createdate':'01/02/2018 01:26 PM'
        },
        {
            'author': {'nickname': 'Shalmali'},
            'body': 'The Avengers movie was so cool!',
            'createdate': '01/02/2018 01:27 PM'
        }
    ]

    users = [
        {
            'firstname':'Shahaji',
            'lastname':'Nangare',
            'education':'M.C.A.',
            'birthdate':'24/06/1977'
        },
        {
            'firstname': 'Aruna',
            'lastname': 'Nangare',
            'education': 'M.Sc. M.Phil. Ph.D.',
            'birthdate': '18/04/1983'
        },
        {
            'firstname': 'Shalmali',
            'lastname': 'Nangare',
            'education': '3rd Primary School',
            'birthdate': '26/05/2009'
        },
        {
            'firstname': 'Shahaji',
            'lastname': 'Nangare',
            'education': 'N/A',
            'birthdate': '06/11/2017'
        }
    ]
    return render_template('index.html',
                title='Home',
                user=user,
                posts=posts,
                users=users)


