%% Matrix Definition
declare 

   fun {GetSize Matrix }
      %% Returns the size N of the N×N matrix given as parameter
      %% Input: None
      %% Output: Result :: Int - The dimension N of the N×N matrix
      %% Your code here
       nil 
   end
   
   fun {GetElement Matrix Row Col }
      %% Returns element at position  Matrix Row, Col) using 1-indexed coordinates
      %% Input: Row :: Int - Row index  Matrix 1 ≤ Row ≤ N)
      %%        Col :: Int - Column index  Matrix 1 ≤ Col ≤ N)
      %% Output: Result :: Int - Element at position  Matrix Row, Col)
      %% Note: If Row and Col are not valide within the matrix size return 142857
      %% Your code here
       nil 
   end
   
   fun {GetRow Matrix RowIndex }
      %% Returns the complete row as a list
      %% Input: RowIndex :: Int - Row number  Matrix 1 ≤ RowIndex ≤ N)
      %% Output: Result :: [Int] - List containing all elements of the specified row
      %% Note: If RowIndex is not valide within the matrix size return 142857
      %% Your code here
       nil 
   end
   
   fun {GetColumn Matrix ColIndex }
      %% Returns the complete column as a list
      %% Input: ColIndex :: Int - Column number  Matrix 1 ≤ ColIndex ≤ N)  
      %% Output: Result :: [Int] - List containing all elements of the specified column
      %% Note: If ColIndex is not valide within the matrix size return 142857
      %% Your code here
       nil 
   end
   
   fun {SumRow Matrix RowIndex }
      %% Returns sum of all elements in specified row
      %% Input: RowIndex :: Int - Row number  Matrix 1 ≤ RowIndex ≤ N)
      %% Output: Result :: Int - Arithmetic sum of all elements in the row
      %% Precondition: RowIndex is valid within the Matrix size
      %% Note: If RowIndex is not valide within the matrix size return 142857
      %% Your code here
       nil 
   end
   
   fun {ProductRow Matrix RowIndex }
      %% Returns product of all elements in specified row
      %% Input: RowIndex :: Int - Row number  ( 1 ≤ RowIndex ≤ N)
      %% Output: Result :: Int - Arithmetic product of all elements in the row
      %% Note: If RowIndex is not valide within the matrix size return 142857
      %% Your code here
       nil 
   end
   
   fun {SumColumn Matrix ColIndex }
      %% Returns sum of all elements in specified column
      %% Input: ColIndex :: Int - Column number  Matrix 1 ≤ ColIndex ≤ N)
      %% Output: Result :: Int - Arithmetic sum of all elements in the column
      %% Note: If ColIndex is not valide within the matrix size return 142857
      %% Your code here
       nil 
   end
   
   fun {ProductColumn Matrix ColIndex }
      %% Returns product of all elements in specified column
      %% Input: ColIndex :: Int - Column number  Matrix 1 ≤ ColIndex ≤ N)
      %% Output: Result :: Int - Arithmetic product of all elements in the column
      %% Note: If ColIndex is not valide within the matrix size return 142857
      %% Your code here
       nil 
   end
   
   fun {SumAll Matrix }
      %% Returns sum of all elements in the matrix
      %% Input: None
      %% Output: Result :: Int - Arithmetic sum of all matrix elements
      %% Note: Returns 0 for empty matrix
      %% Your code here
       nil 
   end
   
   fun {ProductAll Matrix }
      %% Returns product of all elements in the matrix
      %% Input: None
      %% Output: Result :: Int - Arithmetic product of all matrix elements
      %% Note: Returns 1 for empty matrix, returns 0 if any element is 0
      %% Your code here
       nil 
   end
   
   %% Utility funods
   fun {Display Matrix }
      %% Prints matrix in readable format to standard output
      %%    Any format is valid, just must display all the matrix content
      %% Input: None
      %% Output: None  Matrix void)
      %% Your code here
       nil 
   end