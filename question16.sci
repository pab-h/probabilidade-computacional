// Questão 16 - Estimativa de Pi usando o método de Monte Carlo

// Descrição da questão:
// Este código utiliza uma simulação com o método de Monte Carlo para estimar o valor de π.
// Baseado no lançamento de dardos em um círculo inscrito em um quadrado, determinamos a razão
// entre os dardos que caem no círculo e no quadrado para calcular uma aproximação de π.

// Parâmetros

// Raio do círculo
r = 2; 

// Número de dardos
n = 500000; 

// Gerar n coordenadas aleatórias uniformes em [-r, r]
X = grand(1, n, 'unf', -r, r);
Y = grand(1, n, 'unf', -r, r);

// Determinar quantos pontos estão dentro do círculo
dardos_no_circulo = sum(X.^2 + Y.^2 <= r^2);

// Calcular a estimativa de π
pi_estimado = 4 * (dardos_no_circulo / n);

// Exibir resultado
disp("Estimativa de π:");
disp(pi_estimado);

// -------------------------- GUIA DE ESTUDO --------------------------
// 1. Conceitos principais:
//    - Método de Monte Carlo: Técnica probabilística usada para estimativas numéricas.
//    - Distribuição uniforme: Distribuição onde todos os valores em um intervalo têm a mesma probabilidade.
//    - Geometria básica: Área do círculo (πr²) e área do quadrado (4r²).
//
// 2. Recursos utilizados:
//    - [Distribuição uniforme no Scilab](https://help.scilab.org/doc/6.1.1/en_US/grand.html)
//    - [Método de Monte Carlo explicado]https://www.youtube.com/watch?v=VIFj-f6fSdM)
//
// 3. Comentários pessoais:
//    - Este método é sensível ao número de amostras: quanto maior o número de dardos (n), mais próximo estará o valor estimado de π.
//
// 4. Dicas:
//    - Teste o código com diferentes valores de `n` para entender como a precisão muda.
//    - Utilize um valor de `r` diferente para verificar se a estimativa de π permanece inalterada (ela deve ser consistente).

// -------------------------------------------------------------------
