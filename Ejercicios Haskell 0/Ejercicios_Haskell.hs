-- Suma de elementos en una lista
sumarLista :: [Int] -> Int
sumarLista [] = 0
sumarLista (x:xs) = x + sumarLista xs

-- Factorial
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Números pares
numerosPares :: Int -> [Int]
numerosPares n = [x | x <- [0..n], even x]

-- Longitud de una cadena
longitudCadena :: String -> Int
longitudCadena [] = 0
longitudCadena (_:xs) = 1 + longitudCadena xs

-- Reverso de una lista
reversoLista :: [a] -> [a]
reversoLista [] = []
reversoLista (x:xs) = reversoLista xs ++ [x]

-- Duplicar elementos
duplicarElementos :: [Int] -> [Int]
duplicarElementos [] = []
duplicarElementos (x:xs) = x : x : duplicarElementos xs

-- Filtrar elementos pares
filtrarPares :: [Int] -> [Int]
filtrarPares [] = []
filtrarPares (x:xs)
    | even x = x : filtrarPares xs
    | otherwise = filtrarPares xs

-- Fibonacci
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

-- Divisores de un número
divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], n `mod` x == 0]

-- Palíndromo
esPalindromo :: String -> Bool
esPalindromo s = s == reverse s

-- Main
main :: IO ()
main = do
    putStrLn "Suma de elementos en una lista:"
    print $ sumarLista [1, 2, 3, 4, 5]
    
    putStrLn "Factorial de 5:"
    print $ factorial 5
    
    putStrLn "Números pares hasta 10:"
    print $ numerosPares 10
    
    putStrLn "Longitud de la cadena 'Hola Mundo':"
    print $ longitudCadena "Hola Mundo"
    
    putStrLn "Reverso de la lista [1, 2, 3, 4, 5]:"
    print $ reversoLista [1, 2, 3, 4, 5]
    
    putStrLn "Duplicar elementos de la lista [1, 2, 3]:"
    print $ duplicarElementos [1, 2, 3]
    
    putStrLn "Elementos pares de la lista [1, 2, 3, 4, 5]:"
    print $ filtrarPares [1, 2, 3, 4, 5]
    
    putStrLn "El quinto número de Fibonacci:"
    print $ fibonacci 5
    
    putStrLn "Divisores de 12:"
    print $ divisores 12
    
    putStrLn "'oso'"
    print $ esPalindromo "oso"