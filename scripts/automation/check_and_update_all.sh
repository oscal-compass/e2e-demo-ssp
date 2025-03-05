#!/bin/bash

CHANGES=`git diff-tree --no-commit-id --name-only -r HEAD`

md_changed=false
json_changed=false
catalog_changed=false

# bash regex does not support lazy match, so need to use two patterns to match before and after the control id
md1=$"^md_profiles/"
md2=$"\.md$"

json1=$"^profiles/"
json2=$"\.json$"

catalog1=$"^catalogs/"
catalog2=$"\.json$"

for val in ${CHANGES[@]} ; do
  if [[ $val =~ $md1 && $val =~ $md2 ]]; then
    md_changed=true
  fi

  if [[ $val =~ $json1 && $val =~ $json2 ]]; then
    json_changed=true
  fi

  if [[ $val =~ $catalog1 && $val =~ $catalog2 ]]; then
    catalog_changed=true
  fi
done

if [[ $json_changed = true ]]; then
    echo "Json file(s) were changed, regenerating profiles..."
    ./scripts/automation/regenerate_profiles.sh
fi

if [[ $catalog_changed = true ]]; then
    echo "Catalogs file(s) were changed, regenerating profiles..."
    ./scripts/automation/regenerate_profiles.sh
fi


if [[ $md_changed = true ]]; then
    echo "Md file(s) were changed, assembling profiles..."
    ./scripts/automation/assemble_profiles.sh
fi



echo "$md_changed $json_changed"
