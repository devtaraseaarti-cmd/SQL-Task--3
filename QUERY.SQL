  
1        //    basic selecet  queries
          1    SELECT *FROM Customer;

2       //where + order by ( filtering+ sorting)
-----Query 2
              SELECT Firstname,Lastname,Country FROM Customer where Country='USA'order BY Lastname;


3       //aggregations(sum,avg,count)
-----Query 3
            SELECT Country,COUNT(*) AS Total_Customers FROM Customer GROUP BY Country; 


4     // sales / revenue( invoice table ) 
-----Query 4
            SELECT SUM(total)AS total_sales FROM Invoice;


5       //country wise sales
-----Query 5
           SELECT billingcountry,SUM(total) AS sales  FROM  invoice  GROUP BY billingcountry ORDER by sales DESC;


6       //having clause
-----Query 6
          SELECT billingcountry, SUM( total) AS sales  FROM  Invoice GROUP BY billingcountry HAVING sales >100;


7      //data filter( between )
-----Query 7
          SELECT* FROM invoice  WHERE invoicedate BETWEEN 2009-01-01 AND 2011-12-31;
    

8     // like operator( search)
-----Query 8
          SELECT firstname,lastname FROM Customer WHERE firstname like 'A%';