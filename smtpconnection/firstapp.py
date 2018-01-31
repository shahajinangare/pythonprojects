from flask import Flask,request
from flaskext.mysql import MySQL
import smtpconn
import config

mysql = MySQL()
app = Flask(__name__)
app.config['MYSQL_DATABASE_USER'] = config.MYSQL_DATABASE_USER
app.config['MYSQL_DATABASE_PASSWORD'] = config.MYSQL_DATABASE_PASSWORD
app.config['MYSQL_DATABASE_DB'] = config.MYSQL_DATABASE_DB
app.config['MYSQL_DATABASE_HOST'] = config.MYSQL_DATABASE_HOST
mysql.init_app(app)

@app.route("/")
def hello():
    return "Welcome to Python Flask App!"

''' http://127.0.0.1:5000/authenticate?UserName=jay&Password=jay '''
''' http://127.0.0.1:5000/authenticate?UserName=admin&Password=admin '''
@app.route("/authenticate")
def Authenticate():
    username = request.args.get('UserName')
    password = request.args.get('Password')
    cursor = mysql.connect().cursor()
    cursor.execute("SELECT * from User where Username='" + username + "' and Password='" + password + "'")
    data = cursor.fetchone()

    smtpconn.send_mail('shahaji.nangare@adityabirlacapital.com;shahaji.nangare@gmail.com', 'test mail', "Hello world", ['C:\\logs\\test.jpg', 'C:\\logs\\test.txt'])

    if data is None:
     return "Username or Password is wrong"
    else:
     return "Logged in successfully"

if __name__ == "__main__":
    app.run()