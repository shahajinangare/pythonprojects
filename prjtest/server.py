from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "hello,my name is Shahaji Nangare"

@app.route('/profile/<username>')
def profile(username):
    return "<h2>Welcome %s </h2>" % username

@app.route('/post/<int:post_id>')
def show_post(post_id):
    return "<h2>Post id %s </h2>" % post_id

if __name__ == "__main__":
    app.run()
