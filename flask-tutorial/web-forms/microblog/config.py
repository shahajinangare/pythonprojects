CSRF_ENABLED = True
SECRET_KEY = 'you-will-never-guess'

OPENID_PROVIDERS = [
    {'name': 'Google', 'url': 'https://www.google.com/accounts/o8/id'},
    {'name': 'Yahoo', 'url': 'https://me.yahoo.com'},
    {'name': 'AOL', 'url': 'http://openid.aol.com/<username>'},
    {'name': 'Flickr', 'url': 'http://www.flickr.com/<username>'},
    {'name': 'MyOpenID', 'url': 'https://www.myopenid.com'}]


''' _________ Database configuration _________'''
MYSQL_DATABASE_USER = 'root'
MYSQL_DATABASE_PASSWORD = 'a'
MYSQL_DATABASE_DB = 'python_db'
MYSQL_DATABASE_HOST = 'localhost'

'''____________SMTP Configuration_____________'''
SEND_FROM_EMAIL='shahaji.nangare@gmail.com'
SEND_FROM_PASSWORD ='nangare()04'
SMTP_SERVER='smtp.gmail.com'
SMTP_PORT='587'