import random


def generar_contrasena():
    mayuscula = ['A', 'B', 'C', 'D','E','F','G']
    minuscula = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
    simbolo = ['#', '$','%','&']
    numeros = ['1','2','3','4','5','6','7','8','9','0']

    caracteres = mayuscula + minuscula + simbolo + numeros

    contrasena= []

    for i in range(15):
        caracter_random = random.choice(caracteres)

        contrasena.append(caracter_random)
        
    contrasena = " ".join(contrasena)    
    return contrasena


contrasena = generar_contrasena()
print('tu nueva contraseña es.....', contrasena)

    
    


