#!/usr/bin/env python
"""
Hello: hello test
"""
import json
from flask import Flask, jsonify, abort, make_response

APP = Flask(__name__)

# Load the data
#MASCOTS = json.load(open('data.json', 'r'))
from flask import Flask

@APP.route('/')
def msg():
    """
    Function: simple flask app
    Input: none
    Returns: message
    """
    return "Hello to ALL"

if __name__ == '__main__':
    APP.run("0.0.0.0", port=5000)
