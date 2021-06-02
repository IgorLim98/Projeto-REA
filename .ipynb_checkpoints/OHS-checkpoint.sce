//Resolução da equação de movimento para OSCILADOR HARMÔNICO SIMPLES
//A equação é: X''(t) = -(k/m)X(t) uma edo de 2ª ordem

//Parâmetros do problema
//m = 1kg; K = 1N/m; 
//Intervalo de tempo  = 0 à 40 segundos 
// deslocamento da mola incialmente é 0.20 metros
// velocidade no instante t = 0 é 0 metros/segundo

clear,clc
// definindo o intervalo de tempo
t0 = input("informe o valor inicial do intervalo: ");
tn = input("informe o valor final do intervalo: ");
h = input("Informe o passo h: ");
t = t0:h:tn // criando o vetor intervalo de tempo
t = t' // apenas transpoe o vetor t

k = input("informe a constante da mola:")
m = input("informe a massa do objeto: ")

//condições iniciais
w1(1) = 0.20 // objeto deslocado 0.20 m da posição de equilibrio
w2(1) = 0 // no instante que o objeto é solto, têm se velocidade igual a zero


for j = 2:length(t)
    w1(j) = w1(j-1) + w2(j-1)*h //diz respeito a X(t)
    w2(j) = w2(j-1) -(k/m)*w1(j-1)*h // diz respeito a V(t)
end

// determinado para o caso especifico de m = 1kg, k = 1N/m, X(0) = 0.20m, theta_inicial  = 0
function x = f(t)
    x = w1(1)*cos(sqrt(k/m)*t) //w1(1) corresponde ao deslocamento inicial da mola
endfunction
plot2d(t,[w1, f()], leg = "Numérico@Exata@")

