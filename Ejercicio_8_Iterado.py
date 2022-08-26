def funcion1 ():
    historial4 = (7510, 7960, 76180, 4100)
    valor = 100000
    for i in range (len(historial4)):
        if valor > historial4[i]:
            valor = historial4[i]
        
    print ("El monto minimo gastado en Olivia es:", valor)
funcion1()


