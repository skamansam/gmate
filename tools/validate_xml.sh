#!/bin/sh
# [Gedit Tool]
# Name=Validate/ Reformat XML code
# Languages=rubyonrails,xml
# Applicability=all
# Output=replace-document
# Input=document
# Save-files=nothing

zenity --question --title="Prüfen auf valides XML" --text="Soll das XML-Dokument auch formatiert werden?"
case "$?" in
        0)
                xmllint --postvalid --format --dtdattr $GEDIT_CURRENT_DOCUMENT_DIR/$GEDIT_CURRENT_DOCUMENT_NAME;;
        1)
                xmllint --postvalid --dtdattr --noout  $GEDIT_CURRENT_DOCUMENT_DIR/$GEDIT_CURRENT_DOCUMENT_NAME;;
        esac
