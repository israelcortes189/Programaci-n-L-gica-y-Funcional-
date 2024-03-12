import Text.Printf

-- Funciones matemáticas
seno :: Double -> Double
seno x = sin x

coseno :: Double -> Double
coseno x = cos x

tangente :: Double -> Double
tangente x = tan x

exponencial :: Double -> Double
exponencial x = exp x

logaritmo :: Double -> Double
logaritmo x = log x

--Tabla
imprimirTabla :: (Double -> Double) -> Double -> IO ()
imprimirTabla f valor = do
    putStrLn "Entero | Resultado"
    mapM_ (imprimirLinea f) [1..valor]

imprimirLinea :: (Double -> Double) -> Double -> IO ()
imprimirLinea f x = printf "%7.0f|%10.5f\n" x (f x)

--Main
main :: IO ()
main = do
    putStrLn "Elije la función que desea utilizar:"
    putStrLn "1. Seno"
    putStrLn "2. Coseno"
    putStrLn "3. Tangente"
    putStrLn "4. Exponencial"
    putStrLn "5. Logaritmo"
    opcion <- getLine
    putStrLn "Ingrese el valor:"
    valorStr <- getLine
    let valor = read valorStr :: Double
    case opcion of
        "1" -> imprimirTabla seno valor
        "2" -> imprimirTabla coseno valor
        "3" -> imprimirTabla tangente valor
        "4" -> imprimirTabla exponencial valor
        "5" -> imprimirTabla logaritmo valor
        _   -> putStrLn "Opción no válida"
