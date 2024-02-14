module Main where
import Text.Printf

-- Función para calcular el módulo de un vector
moduloVector :: (Double, Double) -> Double
moduloVector (x, y) = sqrt (x^2 + y^2)

main :: IO ()
main = do
    let vector = (3.0, 4.0)
        modulo = moduloVector vector
    printf "El módulo del vector (%.1f, %.1f) es: %.2f\n" (fst vector) (snd vector) modulo