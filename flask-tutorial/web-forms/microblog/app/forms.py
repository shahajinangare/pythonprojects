from flask_wtf import Form
from wtforms import StringField, BooleanField,PasswordField,validators
from wtforms.validators import DataRequired


class LoginForm(Form):
    openid = StringField('openid', validators=[DataRequired()])
    remember_me = BooleanField('remember_me', default=False)

class UserForm(Form):
    username = StringField('username', validators=[DataRequired(),validators.Length(min=4, max=25)])
    password = StringField('password', validators=[DataRequired()])
    email= StringField('email', validators=[DataRequired(),validators.Length(min=6, max=35), validators.email()])

class RegistrationForm(Form):
    username = StringField('Username', [validators.Length(min=4, max=25)])
    email = StringField('Email Address', [validators.Length(min=6, max=35)])
    password = PasswordField('New Password', [
        validators.DataRequired(),
        validators.EqualTo('confirm', message='Passwords must match')
    ])
    confirm = PasswordField('Repeat Password')
    accept_tos = BooleanField('I accept the TOS', [validators.DataRequired()])
