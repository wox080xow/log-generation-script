# ts=$(date +%Y-%m-%dT%H:%M:%S.%3N%:z)
ll=INFO
tid="00000000-0000-0000-0000-000000000000"
pid=1
app=malvin-shell-script
pt=1
ns=localhost
srv=log-generator
msg=Test

x=1
while [ $x -gt 0 ] 
do
  ts=$(date +%Y-%m-%dT%H:%M:%S.%3N%:z)
  echo "[$ts][$ll][$tid][$pid][$app][$pt][$ns][$srv]$msg" >> /nfs/malvin-shell-script.log
  # sleep 1
done
