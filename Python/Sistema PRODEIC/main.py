# Importando as bibliotecas necessárias
import pandas as pd  # Importa a biblioteca pandas e a renomeia como 'pd'
import json  # Importa a biblioteca json
import requests  # Importa a biblioteca requests para fazer solicitações HTTP
import ipdb  # Importa a biblioteca ipdb, que é um depurador interativo

# Loop que itera de 1 a 9 (exclusivo)
for i in range(1, 2):

    # Construindo a URL para consulta
    url = f'https://www.sefaz.mt.gov.br/rcr-fe-api/v1/processo/consultacredenciados?page={i}&size=20'
    # Fazendo uma solicitação GET à URL
    resp = requests.get(url)
    # Verificando se a resposta HTTP foi bem-sucedida (código 200)
    if resp.status_code == 200:
        # Lendo o conteúdo da resposta HTTP como um arquivo JSON
        arquivo = resp.json()
        # Extraindo o conteúdo da chave 'content' do arquivo JSON
        print('valor')
        conteudo = arquivo['content']
        # Criando um DataFrame do pandas a partir do conteúdo extraído
        df = pd.DataFrame(conteudo)
        # Iniciando o depurador interativo ipdb
        #ipdb.set_trace()
