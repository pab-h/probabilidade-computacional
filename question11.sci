// Função para gerar números pseudoaleatórios usando o método congruencial linear
function numeros = geradorUniformeCongruencial(semente, a, c, m, n)
    /*
    Gera uma sequência de números pseudoaleatórios de distribuição
    uniforme usando o método congruencial.

    Parâmetros:
        semente (int): Valor inicial (semente).
        a (int): Multiplicador.
        c (int): Incremento.
        m (int): Módulo.
        n (int): Quantidade de números a serem gerados.

    Retorna:
        numeros (vector): Vetor de números pseudoaleatórios uniformes entre 0 e 1.
    */

    // Inicializa o vetor de saída
    numeros = zeros(1, n); 

    // Define o valor inicial com base na semente
    x = semente;             
    
    // Gera os n valores
    for i = 1:n
        // X_{n + 1} ​= (a * X_n​ + c) mod m
        x = modulo(a * x + c, m); 
        // Normaliza no intervalo [0, 1]
        numeros(i) = x / m;
    end
endfunction

/* 
Parâmetros baseados na implementação cc65 (Compilador de C)
https://en.wikipedia.org/wiki/Linear_congruential_generator

Já que m tem o formato de 2^b, então:

1. a mod 4 = 1;
2. c deve ser ímpar.

para garantir ciclos satisfatórios.

*/

a = 16843009;              
c = 826366247;            
m = 2^32;                 

// a) São diferentes.

amostras3 = geradorUniformeCongruencial(3, a, c, m, 10000);  
amostras102 = geradorUniformeCongruencial(102, a, c, m, 10000);

disp("Primeiros 10 números da sequência A:");
disp(amostras3(1:10));

disp("Primeiros 10 números da sequência B:");
disp(amostras102(1:10));

// b) Sim. Veja o plot comparativo

subplot(2, 2, 1)
histplot(10, amostras3);
title("Histograma - Amostras com Semente 3");

subplot(2, 2, 2)
histplot(10, amostras102);
title("Histograma - Amostras com Semente 102");

// c) Sim. Veja o plot comparativo

amostrasGrand = grand(1, 10000, 'unf', 0, 1);

subplot(2, 2, 3)
histplot(10, amostras3);
title("Histograma - Amostras com Semente 3");

subplot(2, 2, 4)
histplot(10, amostrasGrand);
title("Histograma - Amostras geradas pelo Grand");

/*
-------------------------- GUIA DE ESTUDO --------------------------
# Conceitos Principais
 - Definição de funções 
 - Manipulação de vetores
 - Histogramas
 - Gerar números aleatórios com a função Grand
 - Método Congruencial linear
 
# Referências
- https://pt.wikipedia.org/wiki/Geradores_congruentes_lineares
- https://stackoverflow.com/questions/4768180/rand-implementation
- Material enviado pelo professor (va_uniforme_geracao.pdf)
- https://youtu.be/WyBwno_sNks?si=Y2Hjk-1RAM9Mjgzp
*/
