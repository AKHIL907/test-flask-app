from flask import Flask

app = Flask(__name__)

# Function declaration
@app.route('/')
def index():
    return 'Hello, jiitak! This is my web App.'

if __name__ == '__main__':
    app.run(debug=True)
