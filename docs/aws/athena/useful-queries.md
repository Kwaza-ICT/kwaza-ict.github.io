# Useful queries for Amazon Athena

## Using between dates

```sql
SELECT time, user_agent, request_url, client_ip
FROM "mydb"
WHERE parse_datetime(time, 'yyyy-MM-dd''T''HH:mm:ss.SSSSSS''Z') 
BETWEEN parse_datetime('2025-03-23-00:00:00', 'yyyy-MM-dd-HH:mm:ss')
AND parse_datetime('2025-03-24-23:59:59', 'yyyy-MM-dd-HH:mm:ss')
AND user_agent LIKE '%Hypersonic%' 
AND request_url LIKE '%c=kjhasd%'
LIMIT 1000;
```

## Using like

```sql
SELECT time, user_agent, request_url, client_ip FROM "mydb" where user_agent like '%Hypersonic%' and request_url like '%a=459784%' OR request_url like '%a=316050%' limit 1000;
```