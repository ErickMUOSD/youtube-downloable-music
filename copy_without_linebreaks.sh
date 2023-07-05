#!/bin/bash

while /usr/bin/clipnotify;
do
  selected_text="$(xsel)"
  selected_text1="https://www.youtube.com/watch?v=NrSzf82jtPA&list=RDMc5npgP-unY&index=14"

  CopiedText="$(xsel -b)"
  echo $selected_text
  url="https://www.youtube.com/watch?v=dQw4w9WgXcQ"
if [[ $selected_text =~ ^https:\/\/www\.youtube\.com\/watch\?v=.+ ]]; then
    echo "La URL es válida"
else
    echo "La URL no es válida"
fi

done















#  if [[ $SelectedText != *"file:///"* ]]; then
#    ModifiedTextPrimary="$(echo "$SelectedText" | tr -s '\n' ' ')"
#    echo -n "$ModifiedTextPrimary" | xsel -i
#  fi
#  if [[ $CopiedText != *"file:///"* ]]; then
#    ModifiedTextClipboard="$(echo "$CopiedText" | tr -s '\n' ' '  )"
#    echo -n "$ModifiedTextClipboard" | xsel -bi
 # fi

