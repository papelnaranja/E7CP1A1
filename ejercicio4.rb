
# Se tienen dos arrays uno con el nombre de personas y otro con las edades, se pide generar un hash con el nombre y edad de cada persona (se asume que no existen dos personas con el mismo nombre)

personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
# Se pide generar un hash con la información:
personas_hash = personas.zip(edades).to_h
#print personas_hash


# personas_hash = {"Carolina": 32, "Alejandro":28, "María Jesús":41, "Valentín":19}
# Crear un método que reciba el hash y devuelva el promedio de las edades del hash pasado como argumento.

def promedio(hashe)
    hashe_value = hashe.values
    hashe_length = hashe.length
    #nota: aun no entiendo el inject, pero funciona
    hashe_sum = hashe_value.inject {|sum, n| (sum + n) }  
    puts hashe_sum/hashe_length
end
promedio(personas_hash)
#print personas_hash