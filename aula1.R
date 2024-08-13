# bibliotecas ggplot2 e corrplot

dados_Boston <- MASS::Boston

# DICA: CAUSA "EIXO X", EFEITO "EIXO Y".

?MASS::Boston

ggplot(data = dados_Boston, aes(x = rm, y = medv)) +
  geom_point() +  # gráfico disperção
  theme_classic() +  # tema
  xlab("Número de quartos") +  # eixo x
  ylab("Valor de venda (milhares de dólares)") +  # eixo y
  geom_smooth(method = "lm", se = FALSE) # linha, true mostra uma taxa de ocilação

# ESSA FÓRMULA ACIMA UTILIZAREMOS MUITO

####################################
# COEFICIENTE DE CORRELAÇÃO LINEAR #
####################################

cor(dados_Boston$rm, dados_Boston$medv)
# 0,69, ou seja, uma correlação positiva moderada.

M <- cor(dados_Boston)
corrplot(M, method = "number")
