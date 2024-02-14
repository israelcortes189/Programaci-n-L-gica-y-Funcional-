-- Función para aplicar una función a cada elemento de una lista
aplicarFuncionLista :: (a -> b) -> [a] -> [b]
aplicarFuncionLista f = map f

-- Función para duplicar un número
duplicar :: Int -> Int
duplicar num = num * 2

-- Ejemplo de uso
main :: IO ()
main = do
    let listaOriginal = [1, 2, 3, 4, 5]
    print "Lista original:"
    print listaOriginal
    print "Lista duplicada:"
    print $ aplicarFuncionLista duplicar listaOriginal
