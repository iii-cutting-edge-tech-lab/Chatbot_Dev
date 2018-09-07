from flask import Flask, request, jsonify

app = Flask(__name__)


%run ./db
con_db()



@app.route('/hello',methods=['GET'])
def hello():
    return 'hello'


if __name__=='__main__':
    app.run(host='0.0.0.0',port=5000)


