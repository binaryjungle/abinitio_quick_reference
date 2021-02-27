#########################################################################
#########################################################################
#########################################################################

#TERADATA

dbms: teradata
add_PI_to_create_table: false
db_home: /opt/teradata/client/16.00
odbc_init_file: /home/tutor/.odbc.ini
odbc_data_source_name: td_prod #Name as present in odbc.ini
odbc_libdir: /opt/teradata/client/ODBC_64/lib/
db_name: td_prod #Name as present in odbc.ini
db_nodes: dev_srvr_001
default_database: tutordb
logtable_database: tutordb
worktable_database: tutordb
errortables_database: tutordb
teradata_character_set: ASCII
use_ter_latin_charset: true
user_gendml_charset_source: unicode
use_api_legacy_retrieval: false
teradata_export_width: 0
query_band_add_comp_info: false
scan_for_odbc_escapes: false
assume_unified_ttu_installation: true
user: tutor
#password: password
encrypted_password: Kli54HfreIuwr98-nGPlq
case: lower
generate_dml_with_nulls: true
field_type_preference: delimited
oldstyle_emptystring_as_null: false
fully_qualify_dml: false
dml_with_maximum_length: true
interface: default

#########################################################################
#ODBC.INI
#########################################################################

[ODBC]
InstallDir=/usr/odbc
Trace=0
TraceDll=/usr/odbc/lib/odbctrac.so
TraceFile=~/trace.log
TraceAutoStop=0

[ODBC Data Sources]
td_prod=tdata.so
td_sit=tdata.so

[td_prod]
Driver=/opt/teradata/client/ODBC_64/lib/tdata.so
Description=Teradata Production
DBCName=tdprod1.binaryjungle.com
DBCName2=tdprod2.binaryjungle.com
DBCName3=tdprod3.binaryjungle.com
Usernmae=
Password=
Database=
DefaultDatabase=
MaxRespSize=32500
UseDataEncryption=No
LoginTimeout=300

[td_sit]
Driver=/usr/odbc/drivers/tdata.so
Description=Teradata SIT
DBCName=tdsit1.binaryjungle.com
DBCName2=tdsit2.binaryjungle.com
DBCName3=tdsit3.binaryjungle.com
Usernmae=
Password=
Database=
DefaultDatabase=
MaxRespSize=32500
UseDataEncryption=No
LoginTimeout=300

#########################################################################
#########################################################################
#########################################################################

#ORACLE

dbms: oracle
db_version: 11.2.0.4
db_home: /apps/oracle/client/11.2.0.4/client64/home1/
tns_admin: /apps/oracle/client/11.2.0.4/client64/home1/network/admin
db_name: ORACLE_PROD #Name as present in tnsname.ora
db_nodes: dev_srvr_001
user: tutor
#password: password
encrypted_password: Kli54HfreIuwr98-nGPlq
case: lower
generate_dml_with_nulls: true
field_type_preference: fixed
oldstyle_emptystring_as_null: false
fully_qualify_dml: false
dml_with_maximum_length: true
interface: default
treat_blanks_as_null: true
direct_parallel: true
column_delimiter: "|"

#########################################################################
#tnsnames.ora
#########################################################################

ORACLE_PROD=
  (DESCRIPTION=
    (ADDRESS=
	  (PROTOCOL=TCP)
	  (HOST=oraclehost.binaryjungle.com)
	  (PORT=3521)
	)
	(CONNECT_DATA=
	  (SERVICE_NAME=servicename.binaryjungle.com)
	)
  )

#########################################################################

ORACLE_PROD=
(DESCRIPTION=
 (ADDRESS=(PROTOCOL=TCP)(HOST=oraclehost.binaryjungle.com)(PORT=3521))
  (CONNECT_DATA=
   (SERVICE_NAME=servicename.binaryjungle.com)
  )
)

#########################################################################

ORACLE_PROD=
  (DESCRIPTION_LIST=
    (LOAD_BALANCE=off)
	(FAILOVER=on)
	(DESCRIPTION=
	            (CONNECT_TIMEOUT=5)
				(TRANSPORT_CONNECT_TIMEOUT=3)
				(RETRY_COUNT=3)
				(ADDRESS_LIST=
        (LOAD_BALANCE=on)
		(FAILOVER=on)
		(ADDRESS=(PROTOCOL=TCP)(HOST=oraclehost-prod.binaryjungle.com)(PORT=3521))
      )
       (CONNECT_DATA=
	    (SERVICE_NAME=servicename.binaryjungle.com)
       )
    )
	(DESCRIPTION=
	            (CONNECT_TIMEOUT=5)
				(TRANSPORT_CONNECT_TIMEOUT=3)
				(RETRY_COUNT=3)
				(ADDRESS_LIST=
        (LOAD_BALANCE=on)
		(FAILOVER=on)
		(ADDRESS=(PROTOCOL=TCP)(HOST=oraclehost-dr.binaryjungle.com)(PORT=3521))
      )
       (CONNECT_DATA=
	    (SERVICE_NAME=servicename.binaryjungle.com)
       )
    )
  )

#########################################################################
#########################################################################
#########################################################################

#SQLSERVER

dbms: mssql
db_version: 11.2.0.4
odbc_data_source_name: SS_PROD
db_nodes: localhost
odbc_init_file: /home/tutor/.odbc.ini
user: tutor
#password: password
encrypted_password: Kli54HfreIuwr98-nGPlq
case: lower
generate_dml_with_nulls: true
field_type_preference: delimited
oldstyle_emptystring_as_null: false
fully_qualify_dml: false
dml_with_maximum_length: true
interface: default
client_type: odbc
always_use_specified_delimiter: true
allow_oledb_window_popup: false

#########################################################################
#ODBC.INI
#########################################################################

[SS_PROD]
Driver = /apps/sqlserver/client/native/11.0/lib/libmsodbcsql-11.0.so.2270.0
Description = Microsoft ODBC Driver 11 for SQL Server
Threading = 1
Enrypt = no
#Server =xxx.abc.com,10501
Server =11.22.333.44,10501
Trusted_Connection = no
TrustServerCertificate = yes
Database = ss_prod_db

#########################################################################
#########################################################################
#########################################################################
