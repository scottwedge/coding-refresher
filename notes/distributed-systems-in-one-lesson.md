- Video by Tim Berglund

## What is a Distributed System

>A collection of independent computers that appear to its users as one computer 
> - Tanenbaum

## Three Characteristics of distributed systems

1. The computers operate concurrently
2. The computers fail independently
3. The computers do not share a global clock

### Examples

✔ Amazon
✔ Cassandra Data base
❌ My Computer  - all sub components like cpu, hard disk, ram and others share a global clock

## What is covered

- Different services solve the three characteristic problem

1. *Storage*: Relational/Mongo, Cassandra, HDFS
1. *Computation*: Hadoop, Spark, Storm
1. *Synchronization*: NTP, Vector clocks
1. *Consensus*: Paxos, ZooKeeper (not a consensus algo solving service, but used where consensus is solved) - nodes aggreeing on what is the truth
1. *Messaging*: Kafka