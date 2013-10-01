#!/bin/sh
# [Gedit Tool]
# Name=XML Tidy
# Shortcut=<Primary><Alt>f
# Languages=html,xml
# Applicability=all
# Output=replace-document
# Input=document
# Save-files=nothing

tidy -utf8 -xml -i -c -q -asxml -w 0
