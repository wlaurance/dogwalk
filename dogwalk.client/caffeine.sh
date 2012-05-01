#!/bin/bash

coffee -o Resources -cw coffee/ &
coffee2json -o Resources/assetnest/ -i appinfo.coffee &

