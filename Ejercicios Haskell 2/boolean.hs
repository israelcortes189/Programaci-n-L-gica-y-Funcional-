--Esta función toma como argumentos una función booleana f y una lista [a], 
--y devuelve una nueva lista que contiene solo los elementos 
--de la lista original para los cuales f devuelve True
filtrarConFuncion :: (a -> Bool) -> [a] -> [a]
filtrarConFuncion _ [] = []
filtrarConFuncion f (x:xs)
    | f x       = x : filtrarConFuncion f xs
    | otherwise = filtrarConFuncion f xs

-- Definición de una función booleana que identifica si un numero ingresado es par
esPar :: Int -> Bool
esPar x = x `mod` 2 == 0

-- Main
main :: IO ()
main = do
    let listaOriginal = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        listaFiltrada = filtrarConFuncion esPar listaOriginal
    putStrLn "Lista original:"
    print listaOriginal
    putStrLn "Lista filtrada (solo números pares):"
    print listaFiltrada