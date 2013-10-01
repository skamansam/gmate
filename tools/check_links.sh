#!/bin/sh
# [Gedit Tool]
# Name=Check Links...
# Languages=
# Applicability=all
# Output=output-panel
# Input=nothing
# Save-files=nothing

exec linkchecker `zenity --entry --title="Links prüfen" --width="500" --height="150" --text="Enter the URL to validate:\n " --entry-text "http://www." ` &
