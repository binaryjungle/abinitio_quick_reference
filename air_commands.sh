project-directories -create ramanvai -proj . -all-commmons -ignore-owner
project-directories -create ramanvai -proj . -all-commmons -ignore-owner -ignore-existing

#Need to test

project-directories -create -proj . -all-commmons -ignore-owner
project-directories -create -proj . -all-commmons -ignore-owner -ignore-existing

air ls /school/departments/physics/electricty
air -branch SUBJECTS_DEV ls /school/departments/physics/electricty

air analyze /school/departments/physics/electricty
air analyze /school/departments/physics/electricty -all
air analyze /school/departments/physics/electricty/mp/faraday_law.mp

air branch list
air branch modify TEACHER_DEV

air chmod 750 /abinitio/tags/term_test_01_tag

air help tag
air help tag delete

air lock break /school/departments/physics/electricty/
air lock break -object /school/departments/physics/electricty/mp/faraday_law.mp
air lock show -user tutor | grep -v broken

air ls /school/departments/physics/electricty/mp/faraday_law.mp
air object ls /school/departments/physics/electricty/mp/faraday_law.mp
air ls -R /school/departments/physics/electricty
air ls -lg /school/departments/physics/electricty/mp
air ls -lg /abinitio/tags/term_test_01_tag

air object dataset-associations /school/departments/physics/electricty/mp/faraday_law.mp | grep reads | awk '{print $3}'
air info /school/departments/physics/electricty/mp/faraday_law.mp
air object info /school/departments/physics/electricty/mp/faraday_law.mp
air uses /school/departments/physics/electricty/mp/faraday_law.mp
air object uses /school/departments/physics/electricty/mp/faraday_law.mp
air cat /school/departments/physics/electricty/dml/faraday_law.dml
air object cat /school/departments/physics/electricty/dml/faraday_law.dml

air object versions /school/departments/physics/electricty/dml/faraday_law.dml

air project add /school/departments/physics/electricty/ mp/pascal_law.mp

air project export /projects/school/departments/physics/electricty -basedir /home/tutor/sandboxes/school/departments/physics/electricty -common /projects /home/tutor/sandboxes -export-commons -quiet
air project export /projects/school/departments/physics/electricty -basedir /home/tutor/sandboxes/school/departments/physics/electricty -common /projects/teachers/common /home/tutor/sandboxes/teachers/common -common /projects/students/common /home/tutor/sandboxes/students/common -common /projects/stdenv /home/tutor/sandboxes/stdenv -export-commons -quiet
air project export /projects/school/departments/physics/electricty -basedir /home/tutor/sandboxes/school/departments/physics/electricty -from-tag term_test_01_tag -dry-run
air project export /projects/school/departments/physics/electricty -basedir /home/tutor/sandboxes/school/departments/physics/electricty -from-tag term_test_01_tag
air project export /projects/school/departments/physics/electricty -basedir /home/tutor/sandboxes/school/departments/physics/electricty -files mp/faraday_law.mp
air -version 1001001 project export /projects/school/departments/physics/electricty -basedir /home/tutor/sandboxes/school/departments/physics/electricty -files mp/faraday_law.mp

air project import /projects/school/departments/physics/electricty -basedir /home/tutor/sandboxes/school/departments/physics/electricty -files mp/faraday_law.mp
air project import /projects/school/departments/physics/electricty -basedir /home/tutor/sandboxes/school/departments/physics/electricty -files mp/faraday_law.mp -dry-run
air project import /projects/school/departments/physics/electricty -basedir /home/tutor/sandboxes/school/departments/physics/electricty -files mp/faraday_law.mp -exact
air project import /projects/school/departments/physics/electricty -basedir /home/tutor/sandboxes/school/departments/physics/electricty -files mp/faraday_law.mp -force

air project show /projects/school/departments/physics/electricty
air project show-common /projects/school/departments/physics/electricty

air project modify /projects/school/departments/physics/electricty -extension "*.zip" text/plain

#air promote save term_test_01_tag.save term_test_01_tag -comment "Save of term_test_01_tag"
#air object save abcd.save /projects/lesson -external /projects/common
air save term_test_01_tag.save -from-tag term_test_01_tag
air load save term_test_01_tag.save
#air load term_test_01_tag.save -relocate /project/dev /project/sit

air rm /projects/school/departments/physics/electricty/faraday_law.mp
air rm -f /projects/school/departments/physics/electricty/faraday_law.mp
air rm -r /projects/school/departments/physics/electricty

air sandbox detach /home/tutor/sandboxes/school/departments/physics/electricty
air sandbox attach /home/tutor/sandboxes/school/departments/physics/electricty /projects/school/departments/physics/electricty
air sandbox attach /home/tutor/sandboxes/school/departments/physics/electricty /projects/school/departments/physics/electricty -published-eme TEACHER_DEV

air sandbox info /home/tutor/sandboxes/school/departments/physics/electricty
air sandbox info /home/tutor/sandboxes/school/departments/physics/electricty/mp/faraday_law.mp

air sandbox find faraday_law.mp

air sandbox parameter PP_DB_NAME "teradata_prod"
air sandbox parameter Environment /projects/school/departments/stdenv
air sandbox parameter -path /home/tutor/sandboxes/school/departments/physics/electricty  AI_TEST_FLAG@ABENV "tutor"
air sandbox parameter -path /home/tutor/sandboxes/school/departments/physics/electricty  AI_DATA_MOUNT@ABENV "/data/departments/physics"
air sandbox parameter -path /home/tutor/sandboxes/school/departments/physics/electricty  AI_DATA_MOUNT:sandbox@ABENV "/data/departments/physics"

air sandbox run /home/tutor/sandboxes/school/departments/physics/electricty/mp/faraday_law.mp
air sandbox status /home/tutor/sandboxes/school/departments/physics/electricty/mp/faraday_law.mp

air sandbox eval air sandbox run /home/tutor/sandboxes/school/departments/physics/electricty/mp/faraday_law.mp GP_LAW_NAME

air tag create -exact term_test_01_tag file /home/tutor/file_with_object_names.txt
air tag create term_test_01_tag /projects/school/departments/physics/electricty/mp/faraday_law.mp
air tag create term_test_01_tag -dry-run
air tag create term_test_01_tag

air tag list
air tag list | grep "term_test"
air tag ls
air tag ls | grep "term_test"
air tag list term_test_01_tag
air tag ls term_test_01_tag

air tag ls -l term_test_01_tag
air tag ls -p term_test_01_tag
air tag ls -e term_test_01_tag
air tag ls -n term_test_01_tag
air ls -lg /abinitio/tags/term_test_01_tag

air tag ls -o /projects/school/departments/physics/electricty/mp/faraday_law.mp

hive-to-dml -hive hive_db_name hive_tbl_name



