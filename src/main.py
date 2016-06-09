import socket

from flask import Flask, jsonify

app = Flask(__name__)


@app.route("/")
def hello():
    return "Hello World!"


@app.route('/info')
def info():
    return jsonify(dict(
        container=socket.gethostname(),
        version=1,
        node=''))

if __name__ == "__main__":
    app.run(host='0.0.0.0')
