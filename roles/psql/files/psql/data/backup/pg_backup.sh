#!/bin/bash
WORK_DIR="/data/backup"
SAVE_DIR="/backup"

SQL_HOST="smart-psql.smartcity"
SQL_USER="replicator"
SQL_PASS="rep-pass945"

###################################################################
T=`/bin/date +%Y%m%d-%H%M%S`

[ ! -d ${WORK_DIR} ] && /bin/mkdir -p ${WORK_DIR}
[ ! -d ${SAVE_DIR} ] && /bin/mkdir -p ${SAVE_DIR}

cd ${WORK_DIR}
export PGPASSWORD=${SQL_PASS}
/usr/bin/pg_basebackup -h ${SQL_HOST} -U ${SQL_USER} -F t -z -D ${SAVE_DIR}/${T}