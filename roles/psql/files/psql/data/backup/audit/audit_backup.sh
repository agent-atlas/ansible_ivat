#!/bin/bash
WORK_DIR="/data/backup"
SAVE_DIR=${WORK_DIR}/save

SQL_HOST="smart-psql.smartcity"
SQL_USER="audit"
SQL_PASS="BigAudPass1263"
###################################################################
T=`/bin/date +%Y%m%d-%H%M%S`


#cd ${WORK_DIR}
export PGPASSWORD=${SQL_PASS}
/usr/bin/pg_dump -Fp -c --if-exists -h "${SQL_HOST}" -U "${SQL_USER}" "audit" | gzip >./audit-${T}.sql.gz
