# 运行服务
python /home/xxxx/datax/bin/datax.py /home/xxxx/datax/sync_conf/mysql2hive.json

# 加载本地数据到CDH
hive -e "load data inpath '/tmp/dataSync/chargingOrder/' overwrite into table dwd.apic_order_info_ss_daily PARTITION (dt='$day');"
