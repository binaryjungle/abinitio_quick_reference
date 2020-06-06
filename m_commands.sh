m_cleanup_rm /apps/abinitio/var/file_name.dat
m_cleanup_rm -j /apps/abinitio/var/*

m_mkfs /home/tutor/hdmfs_teachers/main hdfs://srvr000101/hdfs/tutor/hdmfs_teachers_parts/p1/main hdfs://srvr000102/hdfs/tutor/hdmfs_teachers_parts/p2/main

m_touch file_name_01.dat
m_rm file_name_01.dat

m_ls /home/tutor/hdmfs_teachers/main/file_name.dat
m_ls -l /home/tutor/hdmfs_teachers/main/file_name.dat

m_cat /home/tutor/hdmfs_teachers/main/file_name.dat
m_cat -path-help

m_cp file_name_01.dat file_name_02.dat
m_mv file_name_01.dat file_name_02.dat

m_du file_name_01.dat

m_db hosts /home/tutor/teradata_prod.dbc -select "SELECT CURRENT_DATE"
m_db test teradata_prod.dbc

m_env
m_env -build
m_env -describe AB_CONNECTION

m_rollback /home/tutor/sandboxes/school/departments/physics/electricty/run/faraday_law.rec
m_rollback -d /home/tutor/sandboxes/school/departments/physics/electricty/run/faraday_law.rec

m_status /home/tutor/sandboxes/school/departments/physics/electricty/run/faraday_law.run
m_status /home/tutor/sandboxes/school/departments/physics/electricty/mp/faraday_law.mp

m_queue create teachers_queue s1
m_queue delete teachers_queue
m_queue reset-publisher teachers_queue
m_queue reset-subscriber teachers_queue s1
m_queue subscribe teachers_queue s1
m_queue subscribe teachers_queue/subscribe.s1
m_queue unlock teachers_queue
m_queue unlock teachers_queue s1

m_password -unrestricted -prompt

m_dump /home/tutor/sandboxes/school/departments/physics/electricty/faraday_law.dml /home/tutor/data/file_name.dat
m_dump /home/tutor/sandboxes/school/departments/physics/electricty/faraday_law.dml /home/tutor/data/file_name.dat -select "found_year=1875"

m_eval 'now1()'
m_eval 'now()'
m_eval 'utc_now()'
m_eval 'datetime_add(now1(), minutes=-15)'
m_eval -raw 'datetime_add(now1(), minutes=-15)'
m_eval '(datetime("YYYYMMDDHH24MISS")) datetime_add(now1(), minutes=-15)'
m_eval 'directory_listing("/home/tutor/data", "faraday*.dat")'
m_eval 'file_information("/home/tutor/data")'
m_eval 'file_information("/home/tutor/data").size'

m_eval 'lookup_count("file_name.dat")'
m_eval 'lookup_count(lookup_file = "file_name.dat")'
m_eval 'lookup_count(lookup_file = "file_name.dat", expr1 = 1)'

m_shutdown -status /home/tutor/sandboxes/school/departments/physics/electricty/run/faraday_law.rec
m_shutdown -f /home/tutor/sandboxes/school/departments/physics/electricty/run/faraday_law.rec


