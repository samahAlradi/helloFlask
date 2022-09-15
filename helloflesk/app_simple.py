from distutils.log import debug
from flask import Flask, render_template# import de l’objet Flask
app = Flask(__name__) # instantiation application

@app.route("/")
def home():
    return render_template("hom.html")

    # return "<p>Bienvenue chez moi</p>" # association d’une route (URL) avec la
#fonction ‘home()’
# on renvoie une chaîne de caractères

@app.route("/a") 
def about():
    return render_template("about.html") 

if __name__ == "__main__":
    app.run(debug = True, host="0.0.0.0") # démarrage de l’application