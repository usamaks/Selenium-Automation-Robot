*** Settings ***
Library    SeleniumLibrary
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup    connect to database    pymysql    ${dbname}    ${dbuser}    ${dbpw}    ${dbhost}    ${dbport}
Suite Teardown    disconnect from database

*** Variables ***
${dbname}    mydb
${dbuser}    root
${dbpw}      sm@123
${dbhost}    127.0.0.1
${dbport}    3306

*** Test Cases ***
#CreateNewTable
#    ${output} =    execute sql string    create table person(id integer, name varchar(10))
#    log to console    ${output}
#    should be equal as strings    ${output}    None

#InsertdatainTable
#    #single record insertion
#    #${output} =    execute sql string   insert into person values(10,"adam")
#
#    #Multiple records insertion from sql script
#    ${output} =    execute sql script    ./TestData/persondetails.sql
#    log to console    ${output}
#    should be equal as strings    ${output}    None

Check if record exsits in table
    check if exists in database    select id from mydb.person where name="jonah"

Check if record not exist in table
    check if not exists in database    select id from mydb.person where name="hercules"

Check if table exists
    table must exist    person

Verify row count is 0
    row count is 0    select id from mydb.person where name="abc"

Verify row count is equal to some value
    row count is equal to x    select id from mydb.person where name="jonah"    1

Verify row count is less than some value
    row count is less than x    select id from mydb.person where name="adam"    2

Verify row count is greater than some value
    row count is greater than x    select id from mydb.person where name="job"    0

#Update records in table
#    ${output} =    execute sql string    update mydb.person set name="dave" where id=2
#    log to console    ${output}
#    should be equal as strings    ${output}    None

Retrieve records from table
    @{queryresults} =    query    select * from mydb.person
    log to console    many @{queryresults}    # to print many records use many

Delete records from table
    ${output} =    execute sql string    delete from mydb.person
    should be equal as strings    ${output}    None