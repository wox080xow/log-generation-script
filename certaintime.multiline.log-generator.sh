# ts=$(date +%Y-%m-%dT%H:%M:%S.%3N%:z)
ll=INFO
tid="00000000-0000-0000-0000-000000000000"
pid=1
app=malvin-shell-script
pt=1
ns=localhost
srv=log-generator
# msg=Test

x=0
while [ $x -lt $1 ] 
do
  ts=$(date +%Y-%m-%dT%H:%M:%S.%3N%:z)
  echo "[$ts][$ll][$tid][$pid][$app][$pt][$ns][$srv]One line log." >> /nfs/malvin-shell-script.log
  echo "[$ts][$ll][$tid][$pid][$app][$pt][$ns][$srv]Multi-line log." >> /nfs/malvin-shell-script.log
  cat ./3791B.example.txt >> /nfs/malvin-shell-script.log
  # sleep 10
  x=$((x+1))
done
