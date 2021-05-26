from scipy.integrate import quad
#importa a função quad para integrar numericamente uma função

def funcao(T): #definindo a função em questão para utilizar na função quad
    return 22.626 - 0.10075*T + 0.00019271*(T**2) #função de Cp para a amônia 

c, erro = quad(funcao, 283, 373) # 10 °C e 100°C na escala Kelvin respectivamente

print("o resultado é: {:f} (+-{:g})"
    .format(c*8.314, erro)) # é necessário multplicar o resultado pelo valor da Constante universal dos gases R = 8.413
