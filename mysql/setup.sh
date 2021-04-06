#!/bin/bash
mysql -u root -p$MYSQL_ROOT_PASSWORD <<EOF
source $WORK_PATH/schema.sql;
