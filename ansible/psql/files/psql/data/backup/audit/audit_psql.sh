#!/bin/bash
WORK_DIR="/data/backup"
SAVE_DIR=${WORK_DIR}/save

SQL_HOST="smart--psql.smartcity"
SQL_USER="audit"
SQL_PASS="BigAudPass1263"
###################################################################
T=`/bin/date +%Y%m%d-%H%M%S`


#cd ${WORK_DIR}
export PGPASSWORD=${SQL_PASS}
/usr/bin/psql -h "${SQL_HOST}" -U "${SQL_USER}" "audit"
