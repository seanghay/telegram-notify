#!/usr/bin/env bash

./wait-for-it.sh --strict -t $WAIT_TIMEOUT $WAIT_FOR_SERVICE -- \
 curl -s -X POST https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage -d chat_id="$TELEGRAM_CHAT_ID" -d text="$TELEGRAM_SUCCESS_MSG"
