#!/bin/bash
source config.sh
is_not_valid_txt_path=true
echo "Hello friend, we need to configure a few things before we start!"
sleep 3
while $is_not_valid_txt_path; do
  # shellcheck disable=SC2162
  read -p 'Where are we going to save the youtube urls? please provide the full path of a txt file: ' file_with_urls
  if [ -f "$file_with_urls" ]; then
    echo "File exists."
    is_not_valid_txt_path=false
  else
    echo "File does not exist. Try again..."
  fi
done
sleep 2
echo "Perfect! listening for clipboard's events"
#this clipnotify_path comes from config.sh file
while $clipnotify_path_config; do
  selected_text="$(xsel)"
  # CopiedText="$(xsel -b)"
  echo "$selected_text"
  if [[ $selected_text =~ ^https:\/\/www\.youtube\.com\/watch\?v=.+ ]]; then
    echo "La URL es válida"
    #there is no need to check if a file exists
    #the line below will create anyway
    #copy the selected url to a file
    echo "$selected_text" >>"$file_with_urls"
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
