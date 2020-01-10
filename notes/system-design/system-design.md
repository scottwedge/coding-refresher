
# Horizontal Scaling vs Vertical Scaling

|   Horizontal Scaling            |         Vertical Scaling          |
|---------------------------------|-----------------------------------|
|Needs load balancer to route traffic | N/A                           |
|Network latency (slow)                 | Inter process Communication (slow)|
|Scaling is easy - just add new servers | Has a hard limit on how far it can be extended |
|More resilient                   | Single point of failure |
|Data Consistency is problem           | No Consistency issues   |



# The ABCD's of design interviews

- A - Ask good questions 
    - get the minimum viable requirements for the product/design
    - get the minimal feature set
    - how much to scale i.e how much user base
- B - Don't use buzzwords
    - without knowing anything about NoSQL don't talk about it
    - don't talk about stuff you have just read and not practiced
- C - Clear and organized thinking
    - layout the highlevel apis and interfaces before diving deep
- D - Drive discussions with 80-20 rule
    -  80% of the time you should be one leading the discussion

# Things to consider
- Features
- API
- Availability
- Latency
- Scalability
- Durability
- Class Diagram
- Security and Privacy
- Cost-effective

# Concepts to know
- Vertical vs horizontal scaling
- CAP theorem
- ACID vs BASE
- Partitioning/Sharding 
- Consistent Hashing
- Optimistic vs pessimistic locking
- Strong vs eventual consistency
- RelationalDB vs NoSQL
- Types of NoSQL
    - Key value
    - Wide column
    - Document-based
    - Graph-based
- Caching
- Data center/racks/hosts
- CPU/memory/Hard drives/Network bandwidth
- Random vs sequential read/writes to disk
- HTTP vs http2 vs WebSocket
- TCP/IP model
- ipv4 vs ipv6
- TCP vs UDP
- DNS lookup
- Http & TLS
- Public key infrastructure and certificate authority(CA)
- Symmetric vs asymmetric encryption
- Load Balancer
- CDNs & Edges
- Bloom filters and Count-Min sketch
- Paxos 
- Leader election
- Design patterns and Object-oriented design
- Virtual machines and containers
- Pub-sub architecture 
- MapReduce
- Multithreading, locks, synchronization, CAS(compare and set)

# Tools

- Cassandra
- MongoDB/Couchbase
- Mysql
- Memcached
- Redis
- Zookeeper
- Kafka
- NGINX
- HAProxy
- Solr, Elastic search
- Amazon S3
- Docker, Kubernetes, Mesos
- Hadoop/Spark and HDFS

1. [HiredInTech on System Design](https://www.hiredintech.com/system-design/)
1. Palantir's Blog
     - [How to Ace a System Design Interview](https://www.palantir.com/2011/10/how-to-ace-a-systems-design-interview/)
     - [Someother post](http://web.archive.org/web/20160313091215/https://www.palantir.com/2009/05/bandwidth-isnt-cheap-disk-isnt-cheap-cpu-isnt-cheap/)
1. Some posts on reddit: [1](https://www.reddit.com/r/cscareerquestions/comments/30y89g/how_do_you_answer_interview_questions_on_large/), [2](https://www.reddit.com/r/cscareerquestions/comments/4thln8/would_someone_be_able_to_solve_questions_like_the/d5hx00a), [3](https://www.reddit.com/r/coding/comments/4vm20l/heres_how_architecture_interviews_at_tech/), [4](https://www.reddit.com/r/cscareerquestions/comments/3sm85j/how_to_answer_tech_interview_questions_regarding/), [5](https://www.reddit.com/r/cscareerquestions/comments/3tzhyp/what_are_uber_onsite_interviews_like/cxashic)
1. [Quora: How do I prepare to answer design questions?](https://www.quora.com/How-do-I-prepare-to-answer-design-questions-in-a-technical-interview)
1. [This repo with tons of links](https://github.com/checkcheckzz/system-design-interview) and here is [another one](https://github.com/shashank88/system_design) and [another one](https://github.com/jdsutton/Technical-Interview-Megarepo/tree/master/System%20Design)
1. [Scalability for Dummies blog series](http://www.lecloud.net/tagged/scalability)
1. [Reddit Scaling playlist](https://www.youtube.com/watch?v=pjNTgULVVf4&list=PLVi1LmRuKQ0NINQfjKLVen7J2lZFL35wP&index=1)
1. [The Architecture Interview](http://www.susanjfowler.com/blog/2016/10/7/the-architecture-interview)
1. [Gainlo blog](http://blog.gainlo.co/)
1. [MongoDB article on NoSQL](https://www.mongodb.com/nosql-explained)
1. [MIT course on Distributed Systems](http://web.mit.edu/6.033/www/)
1. [A plain English introduction into CAP theorem](http://ksat.me/a-plain-english-introduction-to-cap-theorem/)
1. [How to beat the CAP theorem by Nathan Marz](http://nathanmarz.com/blog/how-to-beat-the-cap-theorem.html)
1. [Consistent Hashing Algorithm Explained](https://ihong5.wordpress.com/2014/08/19/consistent-hashing-algorithm/)
1. [Latency Numbers Every Programmer Should Know](https://gist.github.com/jboner/2841832)
1. [InterviewBit questions on System Design](https://www.interviewbit.com/courses/system-design/)
1. [High Scalability All Time Favorites](http://highscalability.com/all-time-favorites/) and other their articles, top stuff
1. [The Architecture of Open Source Applications Book](http://aosabook.org/en/index.html)

## Note

- first two for beginners, last two for experienced

## Ref
- [Reddit Thread](https://www.reddit.com/r/cscareerquestions/comments/5u825g/resources_on_learning_system_design_and_data/)

## Books

http://book.mixu.net/distsys/single-page.html
https://learning.oreilly.com/library/view/designing-data-intensive-applications/9781491903063/
https://web.mit.edu/alexmv/6.037/sicp.pdf

https://github.com/donnemartin/system-design-primer