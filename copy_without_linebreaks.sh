#!/bin/bash

while /usr/bin/clipnotify;
do
  selected_text="$(xsel)"
  CopiedText="$(xsel -b)"
  echo $selected_text
  regex_yt_url="/(?:https?:\/\/)?(?:(?:(?:www\.?)?youtube\.com(?:\/(?:(?:watch\?.*?(v=[^&\s]+).*)|(?:v(\/.*))|(channel\/.+)|(?:user\/(.+))|(?:results\?(search_query=.+))))?)|(?:youtu\.be(\/.*)?))/g"

  if [[ $selected_text =~ $regex_yt_url ]]; then
    # code block to execute if string matches regex pattern
    echo "URL valida"
 
  else
    echo "URL No valida"
    # code block to execute if string does not match regex pattern
  fi
#  if [[ $SelectedText != *"file:///"* ]]; then
#    ModifiedTextPrimary="$(echo "$SelectedText" | tr -s '\n' ' ')"
#    echo -n "$ModifiedTextPrimary" | xsel -i
#  fi
#  if [[ $CopiedText != *"file:///"* ]]; then
#    ModifiedTextClipboard="$(echo "$CopiedText" | tr -s '\n' ' '  )"
#    echo -n "$ModifiedTextClipboard" | xsel -bi
 # fi
done
