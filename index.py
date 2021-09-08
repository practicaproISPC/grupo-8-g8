from flask import flask, render_template

app=Flask(__name__)

@app.route('/')
def home():
    return '¡¡¡CONTRASEÑA ALEATORIA EXITOSA!!!'

if __name__== '__main__':
    app.run()
