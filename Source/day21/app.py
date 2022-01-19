from flask import Flask

app = Flask(__name__) # Flaskを立ち上げる変数

@app.route('/')
def index():
    return '<h1>Hello My App: Udemy day21</h1>'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80) # 外部からアクセスできる

