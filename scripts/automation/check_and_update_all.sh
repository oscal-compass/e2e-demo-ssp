#!/bin/bash

CHANGES=`git diff-tree --no-commit-id --name-only -r HEAD`

md_changed=false
ssp_changed=false
cd_changed=false

md1=$"^md_ssp/"
md2=$"\.md$"

ssp1=$"^ssp/"
ssp2=$"\.json$"

cd1=$"^component-definitions/"
cd2=$"\.json$"

for val in ${CHANGES[@]} ; do
  if [[ $val =~ $md1 && $val =~ $md2 ]]; then
    md_changed=true
  fi

  if [[ $val =~ $ssp1 && $val =~ $ssp2 ]]; then
    ssp_changed=true
  fi

  if [[ $val =~ $cd1 && $val =~ $cd2 ]]; then
    cd_changed=true
  fi
done

if [[ $cd_changed = true ]]; then
    echo "Component definitions json file(s) were changed, regenerating ssp markdowns..."
    ./scripts/automation/regenerate_ssp.sh
fi

if [[ $ssp_changed = true ]]; then
    echo "SSP json file(s) were changed, regenerating ssp markdowns..."
    ./scripts/automation/regenerate_ssp.sh
fi


if [[ $md_changed = true ]]; then
    echo "Md file(s) were changed, assembling markdowns to SSP json..."
    ./scripts/automation/assemble_ssp.sh
fi



echo "$md_changed $cd_changed $ssp_changed"
