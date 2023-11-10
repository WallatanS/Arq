import unittest

# Função que você deseja testar
idade = input ('digite idade')
def validar_idade(idade):
    
    return 0 <= idade <= 150

# Classe de teste
class TestValidacaoIdade(unittest.TestCase):
    def test_idade_valida(self):
        self.assertTrue(validar_idade(25))  # Deve retornar True para idade válida

    def test_idade_invalida(self):
        self.assertFalse(validar_idade(0))  # Deve retornar False para idade inválida

if __name__ == '__main__':
    unittest.main()
