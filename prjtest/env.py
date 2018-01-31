from flask import Flask

app = Flask(__name__)
@app.route("/")

def home() :
    return "Logged in successfully"

if __name__ == "__main__":
    app.run()
