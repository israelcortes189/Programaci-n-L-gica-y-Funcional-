-- Función para aplicar un descuento a un precio
aplicarDescuento :: Float -> Float -> Float
aplicarDescuento precio descuento = precio - (precio * descuento / 100)

-- Función para aplicar el IVA a un precio
aplicarIVA :: Float -> Float
aplicarIVA precio = precio + (precio * 16 / 100)

-- Función para aplicar descuento al la canasta 
aplicarDescuentoProductos :: [(Float, Float)] -> Float
aplicarDescuentoProductos [] = 0
aplicarDescuentoProductos ((precio, porcentaje):productos) =
    aplicarDescuento precio porcentaje + aplicarDescuentoProductos productos

-- Función main
main :: IO ()
main = do
    let productos = [(100, 10), (50, 5), (30, 15)]
        precioFinalConDescuento = aplicarDescuentoProductos productos -- Precio final con descuento
        precioFinalConIVA = aplicarIVA precioFinalConDescuento -- Aplicar IVA al precio final con descuento
    putStrLn "Productos y porcentajes de descuento:"
    print productos
    putStrLn "Precio final con descuento:"
    print precioFinalConDescuento
    putStrLn "Precio final con IVA:"
    print precioFinalConIVA