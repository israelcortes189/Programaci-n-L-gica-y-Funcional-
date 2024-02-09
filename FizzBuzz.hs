module FizzBuzz where
    --Esta función evalua si el numero ingresado es múltiplo de 5, 3 o de ambos y en caso de ser así
    --regresa una cadena con su texto correspondiente, hasta al final tiene otra opción que en caso de que
    --no se cumpla lo anterior va a mandar llamar otra función
fizzBuzz :: Int -> String
fizzBuzz n
    | n `mod` 3 == 0 && n `mod` 5 == 0 = "FizzBuzz!"
    | n `mod` 3 == 0 = "Buzz!"
    | n `mod` 5 == 0 = "Fizz!"
    | otherwise = numIngles n

--esta función evalua si el número ingresado es menor o mayor que 20, en caso de que sea menor manda llamar
--la función numeros0 que lo que hace es convertir el número en su respectivo texto en Ingles.
-- en caso de ser mayor que 20 va a mandar llamar la función numeros20 que le va a devolver el número
--multiplo de 10 en inglés, depués lo que hará será cponcatenarle una cadena que va a tomar de la función 
--numeros0, el parametro que se le dara sera el residuo de divir dicho número entre 10, 
--Por ejemplo, si n es 25, el resto de dividir 25 entre 10 es 5, entonces se llama a numeros0 5 para obtener "Five".
numIngles :: Int -> String
numIngles n
    | n < 20 = numeros0 n
    | n < 100 = numeros20 (n `div` 10) ++ numeros0 (n `mod` 10)

numeros0 :: Int -> String
numeros0 n
    | n == 0 = "Zero"
    | n == 1 = "One"
    | n == 2 = "Two"
    | n == 3 = "Three"
    | n == 4 = "Four"
    | n == 5 = "Five"
    | n == 6 = "Six"
    | n == 7 = "Seven"
    | n == 8 = "Eight"
    | n == 9 = "Nine"
    | n == 10 = "Ten"
    | n == 11 = "Eleven"
    | n == 12 = "Twelve"
    | n == 13 = "Thirteen"
    | n == 14 = "Fourteen"
    | n == 15 = "Fifteen"
    | n == 16 = "Sixteen"
    | n == 17 = "Seventeen"
    | n == 18 = "Eighteen"
    | n == 19 = "Nineteen"

numeros20 :: Int -> String
numeros20 n
    | n == 2 = "Twenty-"
    | n == 3 = "Thirty-"
    | n == 4 ="Forty-"
    | n == 5 ="Fifty-"
    | n == 6 ="Sixty-"
    | n == 7 ="Seventy-"
    | n == 8 ="Eighty-"
    | n == 9 ="Ninety-"

--en el main básicamente se le pide al usuario que ingrese un número , se lee dicho número y se 
--manda llamar la función fizzbuzz pasandole como parámetro el numero introducido por el usuario
--y en caso de que el número sea mayor que 100 se manda un mensaje de numero invalido 
main :: IO ()
main = do
    putStrLn "Ingrese un número entre 0 y 100:"
    input <- getLine
    let num = read input :: Int
    if num >= 0 && num <= 100
        then putStrLn (fizzBuzz num)
        else putStrLn "Número invalido"
