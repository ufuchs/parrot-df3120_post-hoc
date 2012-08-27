#!/bin/bash

HAS_ENTRY_IN_ETC_HOSTS=$(grep "$DF3120_HOSTNAME" /etc/hosts | wc -l)

if [ $HAS_ENTRY_IN_ETC_HOSTS -eq 0 ]; then
  echo "$DF3120_IP"  "$DF3120_HOSTNAME" > "$STAGE_DIR"/etc_hosts_entry
fi


