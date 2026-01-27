from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello from Python Docker Container!"

@app.route('/health')
def health():
    return {"status": "healthy"}, 200

@app.route('/ready')
def ready():
    # Add logic to check database connectivity here
    return {"status": "ready"}, 200

if __name__ == '__main__':
    port = int(os.getenv('PORT', 5000))
    app.run(host='0.0.0.0', port=port)