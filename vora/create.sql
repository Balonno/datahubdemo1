DROP TABLE VORA.TADH_EVENTS;
CREATE TABLE VORA.TADH_EVENTS  (DEVICE VARCHAR(100),  EVENT VARCHAR(30),  D_TIME VARCHAR(30),  D_VALUE DECIMAL(28,8)  )  TYPE DATASOURCE STORE IN MEMORY;
ALTER TABLE VORA.TADH_EVENTS ADD DATASOURCE PARQUET(HDFS('hdfs://spark-hdfs-adapter:8020/user/vora/events.parquet')) delimited by ';'  SKIP 1;
LOAD TABLE VORA.TADH_EVENTS;