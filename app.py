from flask import Flask, render_template, request, jsonify
from flask.logging import create_logger
import logging

app = Flask(__name__)
LOG = create_logger(app)

@app.route("/")
def index():

    return render_template("index.html")
