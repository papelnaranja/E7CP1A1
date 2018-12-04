
# Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el precio de este.

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

# 1. Obtener el plato mas caro.
h_1 = restaurant_menu.sort_by {|k,v| v}.reverse.to_h
#puts h_1.keys[0]

# 2. Obtener el plato mas barato.
#puts h_1.keys[-1]

# 3. Sacar el promedio del valor de los platos.
def promedio(hashe)
    hashe_value = hashe.values
    hashe_length = hashe.length
    #nota: aun no entiendo el inject, pero funciona
    hashe_sum = hashe_value.inject {|sum, n| (sum + n) }  
    #puts hashe_sum/hashe_length
end
promedio(restaurant_menu)
# 4. Crear un arreglo con solo los nombres de los platos.
platos = restaurant_menu.keys
#puts platos.to_a

# 5. Crear un arreglo con solo los valores de los platos.
precios = restaurant_menu.values
#puts precios.to_a

# 6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19)
#con_iva = restaurant_menu.each { |k, v| restaurant_menu[k] = v * 1.19 } 
#print con_iva

# 7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.

veite_porciento = restaurant_menu.each do |k, v|
    dos_palabras = k.include?(' ')
    if dos_palabras == true
        restaurant_menu[k] = v - (v*0.2) 
    end
end 
print veite_porciento