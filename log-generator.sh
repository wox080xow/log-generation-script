echoVar(){
  variableName=$1
  referenceVariable="variableName"
  echo ${!referenceVariable}: ${!variableName}
}

randomVal() {
  #echo $#
  randomNum=$RANDOM
  #echoVar randomNum
  lengthArray=$#
  #echoVar lengthArray
  seed=$((randomNum % lengthArray + 1))
  #echoVar seed
  value=${!seed}
  #echoVar value
  echo $value
}


#name="malvin"
#echoVar name


# ts=$(date +%Y-%m-%dT%H:%M:%S.%3N%:z)
ll=INFO
tid="00000000-0000-0000-0000-000000000000"
pid=1
app=malvin-shell-script
pt=1
#ns=localhost
#srv=log-generator
#ec=D0101
# msg=Test

eclist=("U0101" "D9999" "N0857")
nslist=("TW" "CN" "JP" "KR" "HK" "SG" "US" "UK" "FR" "DE")
srvlist=("NY" "JY" "MM" "SN" "JH" "MN" "DH" "CY" "TY")

x=0
while [ $x -lt $1 ] 
do
  ts=$(date +%Y-%m-%dT%H:%M:%S.%3N%:z)
  echoVar ts
  ec=$(randomVal "${eclist[@]}")
  echoVar ec
  ns=$(randomVal "${nslist[@]}")
  echoVar ns
  srv=$(randomVal "${srvlist[@]}")
  echoVar srv
  echo "[$ts][$ll][$tid][$pid][$app][$pt][$ns][$srv][$ec]One line log." >> /nfs/malvin-shell-script.log
  echo "[$ts][$ll][$tid][$pid][$app][$pt][$ns][$srv][$ec]Multi-line log." >> /nfs/malvin-shell-script.log
  #cat /tmp/3791B.example.txt >> /nfs/malvin-shell-script.log
  cat /root/log-generation-script/example.txt >> /nfs/malvin-shell-script.log
  #sleep 10
  #sleep 1
  x=$((x+1))
done
