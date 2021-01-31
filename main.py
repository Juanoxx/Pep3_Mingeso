from flask import Flask
app = Flask(__name__)

def suma(a,b):
    return a+b

@app.route('/')
def hello_world():
    res = suma(3,6)
    return 'Hello, World!, el resultado de la suma es %s' % (res)


if __name__ == "__main__":
    app.run(host = '0.0.0.0', port = 5000)