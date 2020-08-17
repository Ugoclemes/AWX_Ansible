#!/bin/bash
/usr/bin/find /opt/ibm/ihs85/logs -name "*.log.*" -type f -mtime +45 -exec rm {} \;


0 3 * * 1-7 /opt/scripts/clear_logs_conciliador.sh