/*Questão 1 – Considere que X1, ..., 𝑋n consiste em n observações de uma amostra aleatória com distribuição estatística uniforme contínua no intervalo [0; 10]. Considere a va 𝑋barra derivada das vas 𝑋1, ..., 𝑋n da seguinte forma: Xbarra = (X1 + ... + Xn)/n */

/*-------------------------------------------------------------------------------*/
/*a) Gere uma amostra de 10000 observações da distribuição de 𝑋barra e esboce seu histograma. */

// Número de observações
num_obs = 10000;

// Gerando uma amostra de 10000 observações de uma distribuição uniforme no intervalo [0, 10]
amostra = grand(1, num_obs, "unf", 0, 10);

// Plotando o histograma das observações
histplot(20, amostra, normalization=%t);
xlabel("Valores da amostra");
ylabel("Frequência Relativa");
title("Histograma de 10000 observações de uma distribuição uniforme [0, 10]");

/*-------------------------------------------------------------------------------*/

/*b) Gere 10000 amostras de 𝑋1, ..., 𝑋n com n = 2, 5 e 50.*/
// Número de listas para cada caso
num_amostras = 10000;

// Gerando 10.000 listas com 2 números aleatórios no intervalo [0, 10]
amostras_2_obs = grand(num_amostras, 2, "unf", 0, 10);

// Gerando 10.000 listas com 5 números aleatórios no intervalo [0, 10]
amostras_5_obs = grand(num_amostras, 5, "unf", 0, 10);

// Gerando 10.000 listas com 50 números aleatórios no intervalo [0, 10]
amostras_50_obs = grand(num_amostras, 50, "unf", 0, 10);

/*-------------------------------------------------------------------------------*/
/*c) Para cada amostra gerada no item anterior e valor de n calcule os valores associados de Xbarra*/

// Calculando as médias de cada lista
medias_n2 = mean(amostras_2_obs, 2); // Médias das listas com 2 números
medias_n5 = mean(amostras_5_obs, 2); // Médias das listas com 5 números
medias_n50 = mean(amostras_50_obs, 2); // Médias das listas com 50 números

// Exibindo as primeiras médias como exemplo
disp("Primeiras 5 médias para n = 2: " + string(medias_n2(1:5)));
disp("Primeiras 5 médias para n = 5: " + string(medias_n5(1:5)));
disp("Primeiras 5 médias para n = 50: " + string(medias_n50(1:5)));

/*-------------------------------------------------------------------------------*/
/*d) Esboce o histograma das 10000 amostras de 𝑋barra para n= 2, 5 e 50. 
*/
//Histograma das médias para n = 2:
histplot(20, medias_n2, normalization=%t);
xlabel("Valores da média");
ylabel("Frequência Relativa");
title("Histograma das médias das 10000 amostras de 2 observações]");

//Histograma das médias para n = 5:
histplot(20, medias_n5, normalization=%t);
xlabel("Valores da média");
ylabel("Frequência Relativa");
title("Histograma das médias das 10000 amostras de 5 observações]");

//Histograma das médias para n = 50:
histplot(20, medias_n50, normalization=%t);
xlabel("Valores da média");
ylabel("Frequência Relativa");
title("Histograma das médias das 10000 amostras de 50 observações]");

/*------------------------------------------------------------------------------*/

/*e) Calcule a média e desvio padrão (amostral) de 𝑋barra para n= 2, 5 e 50. */

//Média de Xbarra para n = 2:
media_X_n2 = mean(medias_n2);
disp("A média de Xbarra para n = 2 é: ", media_X_n2);
//Desvio padrão de Xbarra para n = 2:
desvio_n2 = stdev(medias_n2);
disp("O desvio padrão de Xbarra para n = 2 é: ", desvio_n2);

//Média de Xbarra para n = 5:
media_X_n5 = mean(medias_n5);
disp("A média de Xbarra para n = 5 é: ", media_X_n5);
//Desvio padrão de Xbarra para n = 5:
desvio_n5 = stdev(medias_n5);
disp("O desvio padrão de Xbarra para n = 5 é: ", desvio_n5);

//Média de Xbarra para n = 50:
media_X_n50 = mean(medias_n50);
disp("A média de Xbarra para n = 50 é: ", media_X_n50);
//Desvio padrão de Xbarra para n = 50:
desvio_n50 = stdev(medias_n50);
disp("O desvio padrão de Xbarra para n = 50 é: ", desvio_n50);

/*------------------------------------------------------------------------------*/
/*f) Enuncie o teorema do limite central e sumarize suas principais conclusões obtidas nessa questão em relação à mudança de n e o valor da média e desvio calculados.*/

/*Foi observado que as médias para n = 2, 5 e 50 não se alteraram significativamente (permaneceram em torno de 5), por outro lado, o desvio padrão para n = 2, 5 e 50 diminuiu conforme o número de valores foi aumentado (Sendo o maior desvio padrão para n = 2 e o menor desvio padrão para n = 50). Isso é esperado devido ao Teorema do Limite Central que diz que se o tamanho da amostra é suficientemente grande, ela tem aproximadamente uma distribuição normal. A medida que aumentamos n, verificamos que o histograma fica cada vez mais semelhante à fdp normal – O histograma tende a ficar cada vez mais centrado no valor médio da população original, visto que os dados ficam cada vez menos dispersos, o que é observado nos 3 histogramadas das amostras.*/

/*-------------------------------------------------------------------------------*/



