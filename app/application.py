from flask import Flask

application = Flask(__name__)

@application.route("/")
def home():

    return "hello welcome back"

@application.route("/welcome")
def welcome():

    return "welcome back it has been a while buddy!"

if __name__ == "__main__":
    application.run(host="0.0.0.0", port=5000)