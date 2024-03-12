-- Función para calcular el precio de un inmueble en función de su zona y antigüedad
calcularPrecio :: (Int, Int, Int, Bool, Char) -> Double
calcularPrecio (año, metros, habitaciones, garaje, zona)
    | zona == 'A' = precio * (1 - fromIntegral (2024 - año) / 100) -- Calcula el precio para la zona A
    | zona == 'B' = precio * (1 - fromIntegral (2024 - año) / 100) * 1.5 -- Calcula el precio para la zona B
    where
        -- Calcula el precio base del inmueble
        precio = fromIntegral (metros * 1000 + habitaciones * 5000 + if garaje then 15000 else 0)

-- Función para buscar inmuebles dentro de un presupuesto dado
buscarPorPresupuesto :: [(Int, Int, Int, Bool, Char)] -> Double -> [(Int, Int, Int, Bool, Char, Double)]
buscarPorPresupuesto inmuebles presupuesto = 
    [(a, b, c, d, e, calcularPrecio (a, b, c, d, e)) | (a, b, c, d, e) <- inmuebles, calcularPrecio (a, b, c, d, e) <= presupuesto]

-- Lista de inmuebles de ejemplo
inmuebles :: [(Int, Int, Int, Bool, Char)]
inmuebles = [(2000, 100, 3, True, 'A'), (2012, 60, 2, True, 'B'), (1980, 120, 4, False, 'A'), (2005, 75, 3, True, 'B'), (2015, 90, 2, False, 'A')]

-- Función principal que interactúa con el usuario
main :: IO ()
main = do
    putStrLn "Ingrese el presupuesto:"
    presupuestoStr <- getLine
    let presupuesto = read presupuestoStr :: Double
        inmueblesFiltrados = buscarPorPresupuesto inmuebles presupuesto
    putStrLn "Inmuebles encontrados dentro del presupuesto:"
    print inmueblesFiltrados
