#!/bin/bash
#input_start=2023-03-27

input_start=$1
#input_end=2023-04-03
input_end=$2
search_string=$3
output=$4
runas_user=res_pub_n_read
pbrun -a

# After this, startdate and enddate will be valid ISO 8601 dates,
# or the script will have aborted when it encountered unparseable data
# such as input_end=abcd
startdate=$(date -I -d "$input_start") || exit -1
enddate=$(date -I -d "$input_end + 1 day")     || exit -1
search()
{
s="$3"
d="$1"
e="$2"
l="$4"
while [ "$d" != "$e" ]; do
  echo $d 1>&2
  if [[ $(pbrun runas ${runas_user}@${h} ls -l /sbcimp/dyn/data/EQ_ERD/UBS-AUTHOR/${l}-methode-core-group-$d.tar.gz) ]]; then
                echo "exists: extracting" 1>&2
		    
        pbrun runas ${runas_user}@${h} cat /sbcimp/dyn/data/EQ_ERD/UBS-AUTHOR/AUTHOR_LOGS/Core/a301-9588-7412-methode-core-group-$d.tar.gz | tar -xzOf - methode/meth_prd/logfiles/oldlogs/tomcat-tools.tar.0.gz | tar -xOz --wildcards --no-anchored '*groovyengine.*' | grep ${s}

        tar -xzOf /sbcimp/dyn/data/EQ_ERD/UBS-AUTHOR/${l}-methode-core-group-$d.tar.gz methode/meth_prd/logfiles/oldlogs/tomcat-tools.tar.0.gz | tar -xOz --wildcards --no-anchored '*groovyengine.*' | awk -v search="$s" -v host=$(hostname) ' $0 ~ search {print host, $0}' #"$s" | cat #>> ~/tmp/author_$d.log
  else
                echo "doesnt exist: skipping" 1>&2
  fi
  d=$(date -I -d "$d + 1 day")
done;
}

for i in a301-9588-7412.ldn.swissbank.com a301-6935-4579.hkg.swissbank.com
do
if [[ $i =~ "ldn" ]] 
then
 logs="AUTHOR_LOGS/Core/a301-9588-7412"
else
 logs="AUTHOR_LOGS_HK/Core/a301-6935-4579"
fi
search $startdate $enddate "${search_string}" $logs $i
done