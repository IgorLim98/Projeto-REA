// resolução de sistema de 2 equações representando o movimento de um pêndulo simples


clear,clc
// definindo o intervalo de tempo
t0 = input("informe o valor inicial do intervalo: ");
tn = input("informe o valor final do intervalo: ");
h = input("Informe o passo h: ");
t = t0:h:tn // criando o vetor intervalo de tempo
t = t' // apenas transpoe o vetor t

L = input("informe o comprimento do fio")
g= 9.8 //aceleração da gravidade

//condições iniciais
w1(1) = 0.785398163 // 45 graus em radianos
w2(1) = 0
for j = 2:length(t)
    w1(j) = w1(j-1) + w2(j-1)*h
    w2(j) = w2(j-1) -(g/L)*sin(w1(j-1))*h
end

//solução linear 
function y = f(t)
    y = 0.785398163*cos(sqrt(g/L)*t)
endfunction

plot(t,w2,'b', t, f, 'r')
legends(["Não Linear", "Linear"], opt = "lr")
