SELECT
       TRANSACTION_BEGIN AS [Time]
 , OPERATION_TYPE AS [Operation]
 , OBJECT_NAME AS Object
 , COLUMN_NAME AS [Field name]
 , OLD_VALUE AS [Old value]
 , NEW_VALUE AS [New value]
 , [DATABASE]
 FROM
       dbo.APEXSQL_LOG_OPERATION t
 INNER JOIN dbo.APEXSQL_LOG_OPERATION_DETAIL r
 ON r.LSN = t.LSN;