import requests
import json

# URL base da página
base_url = "https://www.sefaz.mt.gov.br/rcr-fe-api/v1/processo/consultacredenciados?page={}&size=20"

# Número total de páginas a serem coletadas (ajuste conforme necessário)
total_pages = 10

# Lista para armazenar os dados de todas as páginas
all_data = []

for i in range(1, total_pages + 1):
    # Construa a URL da página atual
    url = base_url.format(i)

    # Faça uma solicitação HTTP GET para a página
    response = requests.get(url)

    # Verifique se a solicitação foi bem-sucedida (código de status 200)
    if response.status_code == 200:
        # Converta a resposta JSON em um dicionário Python
        data = response.json()

        # Adicione os dados da página atual à lista
        all_data.extend(data)

        # Imprima uma mensagem de progresso
        print(f"Coletado dados da página {i}")
    else:
        print(f"Falha ao coletar dados da página {i}")

# Crie um arquivo JSON com todos os dados coletados
with open("dados_coletados.json", "w", encoding="utf-8") as json_file:
    json.dump(all_data, json_file, ensure_ascii=False, indent=4)

print("Dados coletados foram salvos em 'dados_coletados.json'")
