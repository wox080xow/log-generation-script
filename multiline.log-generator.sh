# ts=$(date +%Y-%m-%dT%H:%M:%S.%3N%:z)
ll=INFO
tid="00000000-0000-0000-0000-000000000000"
pid=1
app=malvin-shell-script
pt=1
ns=localhost
srv=log-generator
ec=D0101
# msg=Test

x=1
while [ $x -gt 0 ] 
do
  ts=$(date +%Y-%m-%dT%H:%M:%S.%3N%:z)
  echo "[$ts][$ll][$tid][$pid][$app][$pt][$ns][$srv][$ec]One line log." >> /nfs/malvin-shell-script.log
  echo "[$ts][$ll][$tid][$pid][$app][$pt][$ns][$srv][$ec]Multi-line log." >> /nfs/malvin-shell-script.log
  cat /tmp/3791B.example.txt >> /nfs/malvin-shell-script.log
  sleep 10
done
