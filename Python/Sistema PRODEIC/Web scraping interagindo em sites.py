# Importa as bibliotecas necessárias do Selenium
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from time import sleep

# Define o caminho do executável do ChromeDriver
chromedriver_path = 'C:/Users/fabri/Downloads/chromedriver_win32/chromedriver.exe'

# Inicializa uma instância do navegador Chrome usando o ChromeDriver
webdriver = webdriver.Chrome(executable_path=chromedriver_path)

# Aguarda por 2 segundos (para permitir que o navegador abra)
sleep(2)

# Acessa a URL https://news.ycombinator.com/submit no navegador
webdriver.get('https://news.ycombinator.com/submit')

# Aguarda por 2 segundos (para permitir que a página carregue)
sleep(2)

# Localiza o elemento de entrada de texto com o nome 'acct' (nome de usuário)
usuario = webdriver.find_element(By.NAME, 'acct')

# Insere o texto 'hacker_news1234' no campo de entrada de nome de usuário
usuario.send_keys('hacker_news1234')

# Localiza o elemento de entrada de texto com o nome 'pw' (senha)
senha = webdriver.find_element(By.NAME, 'pw')

# Insere o texto 'hacker_news' no campo de entrada de senha
senha.send_keys('hacker_news')

# Localiza o botão de login usando um seletor CSS
button_login = webdriver.find_element(By.CSS_SELECTOR, 'body > form:nth-child(6) > input[type=submit]')

# Clica no botão de login
button_login.click()

# Aguarda por 2 segundos (para permitir que o login seja concluído)
sleep(2)

# Define a URL 'https://news.ycombinator.com/'
url = 'https://news.ycombinator.com/'

# Acessa a URL no navegador
webdriver.get(url)

# Localiza o elemento de class 'titlelink'
rank = webdriver.find_element(By.CLASS_NAME, 'titlelink')

# Clica no elemento encontrado
rank.click()

# Aguarda por 1 segundo (para permitir que a ação seja concluída)
sleep(1)
