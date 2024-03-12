import Data.Char (toUpper)
-- Función para convertir una nota a su categoría correspondiente
categoria :: Int -> String
categoria calificacion
    | calificacion >= 95 = "Excelente"
    | calificacion >= 85 = "Notable"
    | calificacion >= 75 = "Bueno"
    | calificacion >= 70 = "Suficiente"
    | otherwise   = "Desempeño insuficiente"

-- Función para procesar el diccionario de asignaturas y notas
asignaturaNotas :: [(String, Int)] -> [(String, String)]
asignaturaNotas [] = []
asignaturaNotas ((subject, calificacion):rest) = (mapToUpper subject, categoria calificacion) : asignaturaNotas rest
    where
        mapToUpper = map toUpper

main :: IO ()
main = do
    let materias = [("Matematicas", 90), ("Fisica", 78), ("Historia", 60), ("Biologia", 88)]
        materias2 = asignaturaNotas materias
    print "Asignaturas y Calificaciones:"
    print materias
    mapM_ (\(subject, calificacion) -> putStrLn $ subject ++ ": " ++ calificacion) materias2
