// sistema de equações algébricas lineares
// utilizaremos a função Linsolve para resolver um sistema simulando a 5 reatores ligados entre si
// Queremos determinar as concetrações c1, c2, c3, c4, c5 (referente a cada reator)

clear, clc

//informe aqui a seu sistema do tipo Ax + b = 0
A = [8 0 -3 0 0;4 -4 0 0 0;0 -2 10 0 0; 0 0 -7 10 -3;4 2 0 0 -6] // matriz dos coeficientes
b = [-50; 0; -160; 0; 0] //vetor coluna dos termos independentes
x = linsolve(A, b)

printf("O vetor x é: \n")
mprintf("C1 = %6.4f \n", x(1))
mprintf("C2 = %6.4f \n", x(2))
mprintf("C3 = %6.4f \n", x(3))
mprintf("C4 = %6.4f \n", x(4))
mprintf("C5 = %6.4f \n", x(5))
