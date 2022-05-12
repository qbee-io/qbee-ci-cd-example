#!/usr/bin/env python3

from flask import Flask
import yaml
from yaml.loader import SafeLoader

config_file = "/etc/qbee-ci-cd-example/qbee-ci-cd-config.yml"

# Open the file and load the file
config = {}
with open(config_file) as f:
  config = yaml.load(f, Loader=SafeLoader)

app = Flask(__name__)

@app.route("/")
def hello_world():
  return "<p>{}</p>".format(config["title"])

app.run(host="0.0.0.0")
