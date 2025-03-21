compdefs=""
for d in ./component-definitions/* ; do
    compdef=$(basename "$d")
    compdefs="${compdefs}, ${compdef}"
done

echo "Regenerating ssp using ${compdefs}" 

trestle author ssp-generate -cd Ubuntu_Linux_24.04_LTS -p NIST_800-53_rev5_selected -o md_ssp/Ubuntu_Linux_24_04_LTS
