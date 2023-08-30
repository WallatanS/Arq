# Importar bibliotecas
install.packages("serial")


library(serial) # Importa a biblioteca para comunicação serial
library(ggplot2) # Importa a biblioteca para criar gráficos

# Conectar ao Arduino
con <- serialConnection(name = "arduino_conect", port = "com5",
                        mode = "9600,n,8,1",
                        newline = 1,
                        translation = "auto"
)

#while (TRUE) {
  # Abrir a conexão
  open(con) # Abre a conexão serial com o Arduino
  
  # Tempo para coleta
  Sys.sleep(5) # Aguarda 5 segundos para coleta de dados
  
  # Convertendo valores
  valores <- read.serialConnection(con) # Lê os valores da conexão serial
  valores <- as.numeric(strsplit(valores, ",")[[1]]) # Converte os valores para formato numérico
  
  # Fechar a conexão
  close(con) # Fecha a conexão serial
  
  # Criar um dataframe com os valores de umidade
  dados <- data.frame(Tempo = 1:length(valores), Umidade = valores) # Cria um dataframe com colunas Tempo e Umidade
  
  
  
  ##################################################################

  
le_arquivo = function(){
  arquivo = read.csv('arquivo.csv')
  arquivo['tempo'] = 1:nrow(arquivo)
  return(arquivo)
}
  

  
    
for(i in 1:10){
  
  
  print(paste('Loop - ',as.character(i)) )
  
  dados = le_arquivo()
  
  # Criar o gráfico de linhas
  grafico <- ggplot(dados, aes(x = tempo, y = coluna)) + # Define os dados e mapeamento estético para o gráfico
    geom_line(color = "blue", size = 1) + # Adiciona uma linha ao gráfico com cor azul e espessura 1
    labs(x = "Tempo", y = "Umidade") # Define os rótulos dos eixos x e y
  
  # Exibir o gráfico
  print(grafico) # Imprime o gráfico na saída
  
  Sys.sleep(5)
}
  
  arquivo = read.csv('arquivo.csv')
  arquivo['tempo'] = 1:nrow(arquivo)
  
  # Criar o gráfico de linhas
  grafico <- ggplot(arquivo, aes(x = tempo, y = coluna)) + # Define os dados e mapeamento estético para o gráfico
    geom_line(color = "blue", size = 1) + # Adiciona uma linha ao gráfico com cor azul e espessura 1
    labs(x = "Tempo", y = "Umidade") # Define os rótulos dos eixos x e y
  
  # Exibir o gráfico
  print(grafico) # Imprime o gráfico na saída
  

  # Limpar o ambiente
  rm(valores, dados, grafico) # Remove as variáveis para evitar acumulação de memória
#}
