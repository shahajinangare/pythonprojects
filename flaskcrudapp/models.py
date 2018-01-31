from app import db

# Create user model.
class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    first_name = db.Column(db.String(100))
    last_name = db.Column(db.String(100))
    login = db.Column(db.String(80), unique=True)
    email = db.Column(db.String(120))
    password = db.Column(db.String(64))

    # Flask-Login integration
    def is_authenticated(self):
        return True

    def is_active(self):
        return True

    def is_anonymous(self):
        return False

    def get_id(self):
        return self.id

    # Required for administrative interface
    def __unicode__(self):
        return self.username
'''
class Album(db.Model):
        media_types = [('Digital', 'Digital'),
                       ('CD', 'CD'),
                       ('Cassette Tape', 'Cassette Tape')
                       ]
        artist = StringField('Artist')
        title = StringField('Title')
        release_date = StringField('Release Date')
        publisher = StringField('Publisher')
        media_type = SelectField('Media', choices=media_types)

'''

class Posts(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    post = db.Column(db.String(200))