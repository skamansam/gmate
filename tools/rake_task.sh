#!/bin/sh
# [Gedit Tool]
# Name=Rake Tasks
# Languages=rubyonrails
# Applicability=all
# Output=output-panel
# Input=document
# Save-files=nothing

rake `rake --tasks --silent  | cut -d" " -f2 | zenity --list --title="Select rake task" --column="Task"` &
