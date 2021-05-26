// Determinando o volume molar de gases usando o método de Newton - Raphson


function raiz(xo, erro, iter_max, a, b, temp, P)  
    
    function W = f(x) // escreva aqui a equação que vc deseja determinar a raiz
        W = (P + a/(x^2))*(x - b) - 0.082054*temp
    endfunction

    function deriv = f_linha(x) // informe aqui a derivada da (função acima) em relação a varíavel dependente acima
        deriv = P - (a/x^2) + (2*a*b)/x^3
    endfunction
     i = 1
     X(i) = xo
    while (2>1) // Quando o erro relativo for menor que o erro fornecido pelo usuário o loop é quebrado
        X(i+1) = X(i) - (f(X(i))/f_linha(X(i))) // equação de Newton Raphson
        if abs((X(i+1) - X(i))/X(i+1)) < erro
            break
        elseif i > iter_max
            break
        end
        i = i+1
    end   
    
    printf("volume molar do gás com a equação de van der waals:")
    disp(X(i))   

endfunction


function gas_ideal(P, T)// calcula o volume molar do gás ideal
    vol = (0.082054*T)/P // 0.082054 é a constante universal dos gases R
    printf("Volume molar considerando gás como ideal:")
    disp(vol)
endfunction 

    
    




