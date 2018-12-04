# Se tiene un hash con el inventario de un negocio de computadores.
inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
# Se pide:
# 1. Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.
# 2. Si el usuario ingresa 1, podrá agregar un item y su stock en un solo string y agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una coma.
# Ejemplo del input: "Pendrives, 100"
# 3. Si el usuario ingresa 2, podrá eliminar un item.
### 4. Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).
# 5. Si el usuario ingresa 4, podrá ver el stock total (suma del stock de cada item) que hay en el negocio.
# 6. Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.

# 7. Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item existe en el inventario o no. Por ejemplo, el usuario ingresará "Notebooks" y el programa responderá "Sí".

# El programa debe repertirse hasta que el usuario ingrese 7 (salir).

#agrega al inventario
new_product = 'cocacola, 100'
a = new_product.split(',')
inventario[a[0]] = a[1].to_i
#print inventario

#Eliminar item
product_to_delete = 'Notebooks'.to_sym
inventario.delete(product_to_delete)
#print inventario

#Modificar stock


#Sumar stock
inv_values = inventario.values
suma_inv = inv_values.inject {|sum, n| (sum + n) }
puts suma_inv

#Mayor stock

