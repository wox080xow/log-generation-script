echoVar(){
  variableName=$1
  referenceVariable="variableName"
  echo ${!referenceVariable}: ${!variableName}
}

name="malvin"
echoVar name
