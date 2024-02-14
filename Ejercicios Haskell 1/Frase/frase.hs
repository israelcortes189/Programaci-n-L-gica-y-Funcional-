listaFrase :: String -> ([String], Int)
listaFrase frase = (listaPalbras, length frase)
    where
        listaPalbras = words frase

main :: IO ()
main = do
    let frase = "Esta es una frase cualquiera"
        (listaPalbras, sentenceLength) = listaFrase frase
    putStrLn $ "Frase: " ++ frase
    putStrLn $ "Lista de palabras: " ++ show listaPalbras
    putStrLn $ "Longitud de la frase: " ++ show sentenceLength