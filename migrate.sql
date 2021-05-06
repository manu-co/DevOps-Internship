    -- does a particular table exist
    IF EXISTS ( SELECT  1
                FROM    information_schema.Tables
                WHERE   table_schema = 'testDB'
                        AND TABLE_NAME = 'EMP' )
        PRINT 'the table exists' 
    ELSE
        PRINT 'The table isn''t there'