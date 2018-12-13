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
def add_item(inventario)
    puts "Agregar producto en separando nombre y cantidad por coma, por ejemplo:"
    puts "Cocacola, 100"
    new_product = gets.chomp.to_s
    a = new_product.split(',')
    inventario[a[0].to_sym] = a[1].to_i
    print inventario
end

#Eliminar item
def delete_item(inventario)
    puts "Escribir el item a eliminar"
    puts "Bebidas"  
    product_to_delete = gets.chomp.to_sym
    inventario.delete(product_to_delete)
    print inventario
end

#Modificar stock ( ok)
def edit_item(inventario)
    puts "Escribir el Nombre del producto a remplazar"
    product_to_remplace = gets.chomp.to_sym
    puts "Escribir el Nombre del nuevo producto"
    new_name = gets.chomp.to_sym
    puts "Escribir cantidad del producto"
    new_stock = gets.chomp.to_i
    inventario[new_name.to_sym] = new_stock
    inventario.delete(product_to_remplace)
    print inventario
end

#Sumar stock
def sum_Stock(inventario)
    inv_values = inventario.values
    suma_inv = inv_values.inject { |sum, n| (sum + n) }
    puts suma_inv
end

sum_Stock(inventario)

#Mayor stock
def higher_stock(inventario)
mayor_cant = inventario.sort_by{|k,v| v}
puts mayor_cant[-1]
end

#Existe el item
def item_exist(inventario)
    puts "Escribir producto"
    nombre = gets.chomp.to_sym
    incluido = inventario.include? (nombre) 
    if incluido == true 
        puts "Si"
    else
        puts "No"
    end
end

def program_init()
    puts "Programa de inventario"
    puts "Ingresa un número del 1 al 7, para elegir la opción"
    puts "1. Agregar elemento al invetario"
    puts "2. Eliminar item"
    puts "3. Modificar stock"
    puts "4. Sumar stock"
    puts "5. mayor stock"
    puts "6. comprobar si un item existe"
    puts "7. Salir"
end

option = 0
while option != 7 
    program_init()
    option = gets.chomp.to_i
    case option
    when 1
        add_item(inventario)
    when 2
        delete_item(inventario)
    when 3
        edit_item(inventario)
    when 4
        print "\n"
        print sum_Stock(inventario)
        print "\n"

    when 5
        print "\n"
        print higher_stock(inventario)
        print "\n"
    when 6
        item_exist(inventario)
    when 7
        puts "saliendo.."
    else
        puts "Entrada no valida"
    end
end