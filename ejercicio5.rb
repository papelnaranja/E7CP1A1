# Dados los siguientes array:
meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
# Generar un hash que contenga los meses como llave y las ventas como valor:
# h = {'Enero': 2000, 'Febrero': 3000 ... }
# En base al hash generado:

# Invertir las llaves y los valores del hash.
# Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)

h = meses.zip(ventas).to_h
h2 = h.invert()
h3 = h2.sort_by {|k,v| k}.reverse.to_h
puts h3.values[0]