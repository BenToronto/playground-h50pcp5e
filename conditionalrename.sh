for file in *.txt; do 
    
    pathOnly=$(dirname "${file}")
    
    fileName=$(basename "${file}")
    
    fileNameOnly=${fileName%.*}
    
    fileNameLength=${#fileNameOnly}
    
    echo ${pathOnly}, ${filenameOnly}, ${fileLength}
    
    if [ ${fileNameLength} -ge 10 ]; then
        mv "$file" "${pathOnly}/${fileNameOnly}.log"
    fi
done
