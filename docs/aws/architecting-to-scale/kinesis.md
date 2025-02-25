# Kinesis

Amazon Kinesis is a platform on AWS to collect, process, and analyze real-time, streaming data. It is a fully managed service that scales elastically for real-time processing of streaming big data and is integrated with other AWS services, making it easy to build and manage real-time, big data applications.

 - Collection of services for processing streams of various data
 - Data is processed in shards - with each shard able to ingest 1000 records per second
 - A default limit of 500 shards, but can request an increase to unlimited shards
 - Record consists of Partition Key, Sequence Number, and Data Blob
 - Transient Data Store - data is stored for 24 hours by default

## Kinesis Video Streams

Amazon Kinesis Video Streams makes it easy to securely stream video from connected devices to AWS for analytics, machine learning (ML), and other processing. It is a fully managed service that automatically provisions and elastically scales all the infrastructure needed to ingest streaming video data from millions of devices.

 - Securely stream video from connected devices to AWS for analytics, machine learning, and other processing
 - Fully managed service that automatically provisions and elastically scales all the infrastructure needed to ingest streaming video data from millions of devices
 - Supports WebRTC, RTSP, and HLS streaming protocols
 - Can be integrated with Amazon Rekognition for video analysis

## Kinesis Data Streams

Amazon Kinesis Data Streams is a scalable and durable real-time data streaming service that can continuously capture gigabytes of data per second from hundreds of thousands of sources. The data collected is available in milliseconds to enable real-time analytics use cases such as real-time dashboards, real-time anomaly detection, and real-time metrics.

 - Scalable and durable real-time data streaming service
 - Can continuously capture gigabytes of data per second from hundreds of thousands of sources
 - Data collected is available in milliseconds to enable real-time analytics use cases
 - Supports multiple consumers reading from the same stream

## Kinesis Data Firehose

Amazon Kinesis Data Firehose is the easiest way to reliably load streaming data into data lakes, data stores, and analytics services. It can capture, transform, and load streaming data into Amazon S3, Amazon Redshift, Amazon Elasticsearch Service, and Splunk, enabling near real-time analytics with existing business intelligence tools and dashboards.

 - Easiest way to reliably load streaming data into data lakes, data stores, and analytics services
 - Can capture, transform, and load streaming data into Amazon S3, Amazon Redshift, Amazon Elasticsearch Service, and Splunk
 - Enables near real-time analytics with existing business intelligence tools and dashboards
 - Fully managed service that automatically scales to match the throughput of your data and requires no ongoing administration