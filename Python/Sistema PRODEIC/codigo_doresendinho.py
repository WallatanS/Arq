import time
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

# Especifique o caminho para o executável do Chrome
chrome_binary_path = "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

servico = Service(r'/Users/wallatanfranca/Arquivos/CIO/Python/Sistema PRODEIC/chromedriver_mac_arm64/chromedriver')
options = webdriver.ChromeOptions()
options.binary_location = chrome_binary_path  # Especifique o caminho para o executável do Chrome
# options.add_argument("--headless")
driver = webdriver.Chrome(options=options, service=servico)
driver.maximize_window()

url = 'https://www.sefaz.mt.gov.br/rcr-fe/consultacredenciados'

driver.get(url)
time.sleep(6)

prox = WebDriverWait(driver, 60).until(EC.presence_of_element_located((By.XPATH, '//*[@id="pr_id_1_content"]/div/div/div[25]/ul/li[12]/a'))).click()
ultimo_pag = WebDriverWait(driver, 60).until(EC.presence_of_element_located((By.XPATH, '//*[@id="pr_id_1_content"]/div/div/div[6]/ul/li[11]/a')))
qtd_pag = ultimo_pag.text
qtd_pag

print(qtd_pag)
