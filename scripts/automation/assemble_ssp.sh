version_tag=$1
for d in ./system-security-plans/* ; do
    ssp=$(basename "$d")
    echo "Assembling ${ssp}" 
    if [ "$1" != "" ]; then 
       trestle author ssp-assemble --markdown md_ssp/$ssp --output $ssp --compdefs $ssp --version $version_tag 
    else
       trestle author ssp-assemble --markdown md_ssp/$ssp --output $ssp --compdefs $ssp
 fi 
done
