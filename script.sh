#!/bin/bash

sh """
cat index.html | grep "Deploy by jenkins job: ${BUILD_NUMBER}"
"""
