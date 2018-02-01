from flask_wtf import Form
from wtforms import StringField, BooleanField
from wtforms.validators import DataRequired
from wtforms import validators

class LoginForm(Form):
    openid = StringField('openid', validators=[DataRequired()])
    remember_me = BooleanField('remember_me', default=False)

class UserForm(Form):
    username = StringField('username', validators=[DataRequired(),validators.Length(min=4, max=25)])
    password = StringField('password', validators=[DataRequired()])
    email= StringField('email', validators=[DataRequired(),validators.Length(min=6, max=35), validators.email()])
