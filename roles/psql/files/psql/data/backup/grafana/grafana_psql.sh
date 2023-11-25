#!/bin/bash
WORK_DIR="/data/backup"
SAVE_DIR=${WORK_DIR}/save

SQL_HOST="smart-psql.smartcity"
SQL_USER="grafana"
SQL_PASS="Griby63RaZVaril"
###################################################################
T=`/bin/date +%Y%m%d-%H%M%S`


#cd ${WORK_DIR}
export PGPASSWORD=${SQL_PASS}
/usr/bin/psql -h "${SQL_HOST}" -U "${SQL_USER}" "grafana"
