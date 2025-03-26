# AWS Athena

Amazon Athena is an interactive query service that makes it easy to analyze data in Amazon S3 using standard SQL. Athena is serverless, so there is no infrastructure to manage, and you pay only for the queries that you run.

## How to create a DB from a access log bucket of an ALB

```sql
CREATE EXTERNAL TABLE `name_of_table`(
  `type` string COMMENT '', 
  `time` string COMMENT '', 
  `elb` string COMMENT '', 
  `client_ip` string COMMENT '', 
  `client_port` int COMMENT '', 
  `target_ip` string COMMENT '', 
  `target_port` int COMMENT '', 
  `request_processing_time` double COMMENT '', 
  `target_processing_time` double COMMENT '', 
  `response_processing_time` double COMMENT '', 
  `elb_status_code` int COMMENT '', 
  `target_status_code` string COMMENT '', 
  `received_bytes` bigint COMMENT '', 
  `sent_bytes` bigint COMMENT '', 
  `request_verb` string COMMENT '', 
  `request_url` string COMMENT '', 
  `request_proto` string COMMENT '', 
  `user_agent` string COMMENT '', 
  `ssl_cipher` string COMMENT '', 
  `ssl_protocol` string COMMENT '', 
  `target_group_arn` string COMMENT '', 
  `trace_id` string COMMENT '', 
  `domain_name` string COMMENT '', 
  `chosen_cert_arn` string COMMENT '', 
  `matched_rule_priority` string COMMENT '', 
  `request_creation_time` string COMMENT '', 
  `actions_executed` string COMMENT '', 
  `redirect_url` string COMMENT '', 
  `lambda_error_reason` string COMMENT '', 
  `target_port_list` string COMMENT '', 
  `target_status_code_list` string COMMENT '', 
  `classification` string COMMENT '', 
  `classification_reason` string COMMENT '', 
  `conn_trace_id` string COMMENT '')
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.RegexSerDe' 
WITH SERDEPROPERTIES ( 
  'input.regex'='([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*):([0-9]*) ([^ ]*)[:-]([0-9]*) ([-.0-9]*) ([-.0-9]*) ([-.0-9]*) (|[-0-9]*) (-|[-0-9]*) ([-0-9]*) ([-0-9]*) \"([^ ]*) (.*) (- |[^ ]*)\" \"([^\"]*)\" ([A-Z0-9-_]+) ([A-Za-z0-9.-]*) ([^ ]*) \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" ([-.0-9]*) ([^ ]*) \"([^\"]*)\" \"([^\"]*)\" \"([^ ]*)\" \"([^\\s]+?)\" \"([^\\s]+)\" \"([^ ]*)\" \"([^ ]*)\" ?([^ ]*)?') 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://<bucket-name>/aws/AWSLogs/<path until the region>/<region>/<year>'
TBLPROPERTIES (
  'transient_lastDdlTime'='1742910240')
```