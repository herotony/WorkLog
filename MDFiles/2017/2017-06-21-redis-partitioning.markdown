---
layout: post
title: redis-partitioning
date: '2017-06-21 15:56'
---

redis的详细官方文档[<font color=green>(请点击此处)</font>](https://redis.io/documentation "redis官方文档")

##Partitioning(分区)
>目的：将数据分割存储到多个Reids实例中，从而实现如下两个目标：
> * 通过利用多台计算机的内存来存储更大的数据库数据。
> * 允许充分利用多核或多台计算机扩展redis的计算能力，允许利用多台计算机的网卡来扩展网络带宽流量。

####Partitioning basics
* range partitioning

  通过维护一张表来维护key和reids实例的对应关系，来获取对应的redis实例，且对key的格式有具体要求，比如：user:1,user:2...的格式，通过1,2...来找对应的redis实例，比如，1-1000在r0实例，1001-2000在r2实例...
* hash partitioning

  通过将key进行hash计算转换为整数，然后对该整数进行<font color=#FFA500>取模运算</font>获取对应的redis实例，现在基本都采用此种方案。
####Partitioning的不同实现方式
三种不同的实现方式：
* Client side partitioning

  直接通过客户端来选取要写入或读取key的redis实例，目前多种客户端已实现了分区功能。
* Proxy assisted partitioning

  仅仅就是客户端将请求发给Proxy，Proxy决定用哪个redis实例并返回相应的请求结果。
* Query routing

  客户端将请求随机发给任一个redis实例，然后由具体的某个redis实例将请求转发给正确的节点并返回相应的结果，redis集群就是典型的这种实现方式！

<table><tr><td bgcolor=#FF4500><font color=white>注意！以上都是采用了取模算法来决定redis实例，只是实现端在哪边的区别
