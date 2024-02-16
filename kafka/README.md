# kafka

Kafka binary needs to be installed first

* install java:  sudo yum install java-1.8.0-openjdk-headless.aarch64
* install kafka binary
~~~
        wget https://dlcdn.apache.org/kafka/3.5.0/kafka_2.13-3.5.0.tgz
        tar -xzf kafka_2.13-3.5.0.tgz
~~~
* cd kafka_2.13-3.5.0

Since these scripts need to resolve all kafka hosts so they need to run at bastion hosts for AWS MSK.