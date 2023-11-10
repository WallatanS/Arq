import pandas as pd
import requests
import time
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from webdriver_manager.chrome import ChromeDriverManager

chrome_binary_path = "/Applications/Google/Google Chrome.app"

servico = Service(ChromeDriverManager().install())
options = webdriver.ChromeOptions()
options.binary_location = chrome_binary_path  # Especifique o caminho para o executável do Chrome
# options.add_argument("--headless")
driver = webdriver.Chrome(options=options, service=servico)
#driver.maximize_window()

url_page_end = 'https://www.sefaz.mt.gov.br/rcr-fe/consultacredenciados'

driver.get(url_page_end)
time.sleep(6)

prox = WebDriverWait(driver, 60).until(EC.presence_of_element_located((By.XPATH, '//*[@id="pr_id_1_content"]/div/div/div[25]/ul/li[12]/a'))).click()

ultimo_pag = WebDriverWait(driver, 60).until(EC.presence_of_element_located((By.XPATH, '//*[@id="pr_id_1_content"]/div/div/div[6]/ul/li[11]/a')))
pages_numbers = ultimo_pag.text
print(pages_numbers)

# Função para corrigir CNPJ
def corrigir_cnpj(cnpj):
    # Verifique se o CNPJ tem menos de 14 dígitos
    if (len(cnpj) < 14) & (len(cnpj) > 11):
        # Adicione zeros à direita para completar 14 dígitos
        cnpj = cnpj.rjust(14, '0')
        print(cnpj)
    return cnpj

lista = []

# Loop que itera de 1 a 9 (exclusivo)
for i in range(1, int(pages_numbers)):
    # Construindo a URL com base no valor de entrada da página
    url = f'https://www.sefaz.mt.gov.br/rcr-fe-api/v1/processo/consultacredenciados?page={i}&size=20'

    # Fazendo uma solicitação GET à URL
    resp = requests.get(url)

    # Verificando se a resposta HTTP foi bem-sucedida (código 200)
    if resp.status_code == 200:
        # Lendo o conteúdo da resposta HTTP como um arquivo JSON
        arquivo = resp.json()
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

# Salvar o resultado em um arquivo JSON
resultado_final.to_json('resultado.json', orient='records', lines=True)
#resultado_final.to_csv('', encoding='utf-8', sep=';')
print(resultado_final)