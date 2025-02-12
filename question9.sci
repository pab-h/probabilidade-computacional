/*Questão 9 – Considere que X é uma variável aleatória contínua exponencial distribuída com parâmetro 𝜆 = 0,5. Gere uma amostra com 5000 observações dessa distribuição utilizando o Scilab. Considere que realizamos a seguinte operação em todas observações dessa amostra 𝑦1 /1+ e^-lambda*xi em que 𝑦i consiste na nova observação gerada e 𝑥i consiste na observação original. Calcule a média amostral dessa nova amostra. Demonstre que a média amostral calculada anteriormente aproxima E[1/1+ e^-lambda*xi]*/

//Parâmetro da distribuição exponencial:
lambda = 0.5;

//Tamanho da amostra:
n = 5000;

// Gerando uma amostra de 5000 observações de uma distribuição exponencial com parâmetro lambda
X = grand(1, n, "exp", 1/lambda); //O parâmetro em grand é 1/lambda

//Aplicando a transformação y_i = 1 / (1 + exp(-lambda * x_i))
Y = 1 ./ (1 + exp(-lambda * X));

//Calculando a média amostral da nova amostra Y
media_Y = mean(Y);

// Exibindo a média amostral
disp("Média amostral de Y: " + string(media_Y));

// Função a ser integrada: g(x) * f_X(x) para calcular o valor esperado:
function y = integrando(x)
    y = (1 ./ (1 + exp(-lambda * x))) .* lambda .* exp(-lambda * x);
endfunction

// Limites de integração (0 a infinito)
// Usamos um valor grande no lugar de infinito
limite_inferior = 0;
limite_superior = 1000; // Próximo o suficiente de infinito para a exponencial

// Calculando o valor esperado usando integração numérica
valor_esperado = intg(limite_inferior, limite_superior, integrando);

// Exibindo o valor esperado
disp("Valor esperado teórico: " + string(valor_esperado));
