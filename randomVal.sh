
echoVar(){
  variableName=$1
  referenceVariable="variableName"
  echo ${!referenceVariable}: ${!variableName}
}

randomVal() {
  #echo $#
  randomNum=$RANDOM
  echoVar randomNum
  lengthArray=$#
  echoVar lengthArray
  #seed=$(($RANDOM % $#))
  seed=$((randomNum % lengthArray + 1))
  echoVar seed
  value=${!seed}
  echoVar value
  #echo $value
}


#name="malvin"
#echoVar name


eclist=("U0101" "D9999" "N0857")
randomVal "${eclist[@]}"
#ec=$(randomVal "${eclist[@]}")
#echoVar ec
echo ""
nslist=("localhost" "k8s-01" "k8s-02" "k8s-03")
randomVal "${nslist[@]}"
echo ""
numlist=($(seq 1 10))
randomVal "${numlist[@]}"
