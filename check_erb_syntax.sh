#!/bin/bash

erb -x -T '-' $1 | ruby -c
