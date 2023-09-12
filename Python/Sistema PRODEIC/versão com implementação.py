import pandas as pd
import json
import requests


# Função para corrigir CNPJ
def corrigir_cnpj(cnpj):
    # Verifique se o CNPJ tem menos de 14 dígitos
    if (len(cnpj) < 14) & (len(cnpj) > 11):
        # Adicione zeros à direita para completar 14 dígitos
        cnpj = cnpj.rjust(14, '0')
        print(cnpj)
    return cnpj


lista = []
pages_numbers = 5

# Loop que itera de 1 a 9 (exclusivo)
for i in range(1, 5):
    # Construindo a URL com base no valor de entrada da página
    url = f'https://www.sefaz.mt.gov.br/rcr-fe-api/v1/processo/consultacredenciados?page={i}&size=20'

    # Fazendo uma solicitação GET à URL
    resp = requests.get(url)

    # Verificando se a resposta HTTP foi bem-sucedida (código 200)
    if resp.status_code == 200:
        # Lendo o conteúdo da resposta HTTP como um arquivo JSON
        arquivo = resp.json()
        #print(arquivo)
        # Extraindo o conteúdo da chave 'content' do arquivo JSON
        conteudo = arquivo['content']

        # Corrigindo o campo 'numrDocumento' em cada registro
        for item in conteudo:
            item['numrDocumento'] = corrigir_cnpj(item['numrDocumento'])

        # Criando um DataFrame do pandas a partir do conteúdo corrigido
        df = pd.DataFrame(conteudo)
        lista.append(df)
    else:
        break

#print(lista)
# Combinando todos os DataFrames em um único DataFrame
resultado_final = pd.concat(lista, ignore_index=True)
#print(resultado_final)

# Salvar o resultado em um arquivo JSON
resultado_final.to_json('resultado.json', orient='records', lines=True)
print(resultado_final)
