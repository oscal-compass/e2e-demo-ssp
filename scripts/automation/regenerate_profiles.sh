for d in ./profiles/* ; do
    profile=$(basename "$d")
    echo "Regenerating ${profile}" 
    trestle author profile-generate --output md_profiles/$profile --name $profile
done
