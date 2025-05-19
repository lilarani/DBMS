--  Logical Negation NOT, understanding NULL and the Null-Coalescing Operator in PostgreSQL

-- not
SELECT * FROM student2  
  WHERE not country = 'Bangladesh';

-- same as not
  SELECT * FROM student2
    WHERE country  <>  'Nepal'


-- null
-- amra null er sathe ja kichu add kori na kno null return korbe.

SELECT * FROM student2
  WHERE email is  NULL;


SELECT * FROM student2
  WHERE email is not NULL;



  -- coalescing
  SELECT COALESCE(NULL, NULL, 10);

  SELECT  COALESCE(email, 'Email not provided')  FROM student2;
    

SELECT * FROM student2



