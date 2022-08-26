def funcion1 ():
    historial4 =(7510, 7960, 76180, 4100)
    number = 0
    valor = historial4[1]
    while number != (len(historial4)):
        if valor > historial4[number]:
            valor = historial4[number]
        number += 1    
    print ("El monto minimo gastado en Olivia es:", valor)
    
funcion1()
