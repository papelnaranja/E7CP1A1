# Dado el hash:
h = {"x": 1, "y":2}

# 1. Agregar el string z con el valor 3.
h["z"] = 3
#puts h

# 2. Cambiar el valor de x por 5.
h[:x] = 5
#puts h

# 3. Eliminar la clave y.
h.delete(:y)
puts h

# 4. Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".
puts 'yeeha' if h.key?("z")

# 5. Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores
# Ejemplo:
#  x = {"a": "hola" } 
# Se transforme en:
# x = {"hola": "a"}

nuevo_hash = h.invert()
puts nuevo_hash