version_tag=$1
for d in ./profiles/* ; do
    profile=$(basename "$d")
    echo "Assembling ${profile}" 
    if [ "$1" != "" ]; then 
       trestle author profile-assemble --markdown md_profiles/$profile --output $profile --set-parameters --version $version_tag 
    else
       trestle author profile-assemble --markdown md_profiles/$profile --output $profile --set-parameters
    fi
done
