from flask import Flask

debug=True
listen='0.0.0.0'
port=8080

app = Flask(__name__)

@app.route("/")
def home():
    return "example"

@app.route("/healthcheck")
def health():
    return "OK"
    
if __name__ == "__main__":
    app.run(host=listen, port=port, debug=debug)