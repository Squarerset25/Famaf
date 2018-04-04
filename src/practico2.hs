---Ejercicio 3 (Funciones Filter)
-- a)
soloPares :: [Int] -> [Int]
soloPares [] = []
soloPares (x:xs) | (mod x 2 == 0) = x:soloPares xs
                 | (mod x 2 /= 0) = soloPares xs

-- b)
mayoresQue10 :: [Int] -> [Int]
mayoresQue10 [] = []
mayoresQue10 (x:xs) | (x>10) = x:mayoresQue10 xs
                    | (x<10) = mayoresQue10 xs

-- c) 
mayoresQue :: Int -> [Int] -> [Int]
mayoresQue a [] = []
mayoresQue a (x:xs) | (x>a) = x:mayoresQue a xs
                    | True = mayoresQue a xs

---Ejercicio 4 (Funciones Map)
-- a)
sumar1 :: [Int] -> [Int]
sumar1 [] = []
sumar1 (x:xs) = (x+1):sumar1 xs

-- b)
duplica :: [Int] -> [Int]
duplica [] = []
duplica (x:xs) = (x*2):duplica xs

-- c)
multiplica :: Int -> [Int] -> [Int]
multiplica a [] = []
multiplica a (x:xs) = (a*x):multiplica a xs

---Ejercicio 5 (Funciones Fold)
-- a)
todosMenores10 :: [Int] -> Bool
todosMenores10 [] = True
todosMenores10 (x:xs) | x<10 = True && todosMenores10 xs
                      | True = False && todosMenores10 xs

-- b) 
hay0 :: [Int] -> Bool
hay0 [] = False
hay0 (x:xs) | x == 0 = True 
            | x /= 0 = hay0 xs 

-- c)
sumDeLista :: [Int] -> Int
sumDeLista [] = 0
sumDeLista (x:xs) = x + sum xs 

---Ejercicio 6 (Funciones Zip)
-- a)
repartir ::  [String] -> [String] -> [(String, String)]
repartir [] [] = []
repartir (x:xs) [] = []
repartir [] (x:xs) = []
repartir (x:xs) (y:ys) = (x,y) :(repartir xs ys)



             
