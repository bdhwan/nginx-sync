#!/bin/bash

echo 'will HOSTS '${HOSTS}''
echo 'will USERNAME '${USERNAME}''
echo 'will PASSWORD '${PASSWORD}''
echo 'will GIT_URL '${GIT_URL}''

SCRIPT='GIT_URL='${GIT_URL}' sh sync.sh'
for HOSTNAME in ${HOSTS} ; do
    echo ${HOSTNAME}
    # ssh-keyscan ${HOSTNAME} >> ~/.ssh/known_hosts
    sshpass -p${PASSWORD} scp -o StrictHostKeyChecking=no sync.sh ${USERNAME}@${HOSTNAME}:sync.sh
    sshpass -p${PASSWORD} ssh -l ${USERNAME} ${HOSTNAME} "${SCRIPT}"
done
echo 'done'
exit 0



