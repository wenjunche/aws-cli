# List messages from a topic

 bin/kafka-console-consumer.sh --bootstrap-server kafka-host1:9092,kafka-host2:9092,kafka-host3:9092 --topic queueing.notifications.notification --from-beginning