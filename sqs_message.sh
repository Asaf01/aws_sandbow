#!/bin/bash
QUEUE_URL="https://sqs.us-east-1.amazonaws.com/<ACCOUNT_ID***********>/sqs-queue.fifo"
MESSAGE="Testing for ASG SQS"
for ((i=1; i<=120; i++))
do
 aws sqs send-message \
--queue-url "$QUEUE_URL" \
--message-body "$MESSAGE" \
--message-group-id "$i" \
--message-deduplication-id "$i"
 done
 ## 
