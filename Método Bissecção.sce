// Algoritmo para encontrar raízes de um função utilizadndo o método da bissecção 
// Escreva aqui a função de uma variável 
function y = f(x); 
    y = (668.06/x)*(1-exp(-0.146843*x)) - 40 
endfunction

function acha_raiz(lim_inf, lim_sup, erro) 
    //encontra a raiz aproximada de uma função, quando fornecido o limite inferior, o superior e o erro aceitável    
    while (1)
        raiz = (lim_inf + lim_sup)/2
        if abs(lim_sup - lim_inf) < erro then //caso o intervalor encontrado seja menor que o erro informado, achamos a raiz
            printf("Raiz aproximada encontrada:")
            x = (lim_inf+lim_sup)/2
            break;
        elseif f(lim_inf)*f(raiz) > 0 then // se esse produto é positivo, significa que a raiz está no intervalor superior
            lim_inf = raiz;
        elseif f(lim_inf)*f(raiz) < 0  // se as duas possibilidades acima não estão corretas, só resta que a raiz está no intervalo inferior
            lim_sup = raiz                
        end
    end
    // Observe que o intervalo vai sempre sendo diminuído
    disp(x);
    printf("Valor da função aplicada na raiz aproximada encontrada:\ny = ")
    disp(f(x))
    
endfunction

//Antes de chutar um valor inicial, vamos plotar a função para termos uma noção onde a raiz se encontra

x = linspace(-20,20,50)
plot(x,f)

while(1)
    a = input("Informe o limite inferior do intervalo: ");
    b = input("Informe o limite superior do intervalo: ");
    erro = input("Informe o erro/Críterio De Parada desejado: ")

    if f(a)*f(b) < 0 then // verifica se raiz se encontra entre o intervalo fornecido
        printf("O intervalo possui uma ou mais raizes\n")
        break // caso a raiz esteja aqui, ele interrompe o loop e vai pra frente no algoritmo
    else
        printf("Esse intervalo não possue raiz, insira um novo!")
    end
end

acha_raiz(a,b,erro);




