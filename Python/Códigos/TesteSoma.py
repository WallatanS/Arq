import unittest
from Exemplo_Soma import MinhaClasse


class TesteMinhaClasse(unittest.TestCase):
    def test_soma(self):
        obj = MinhaClasse()
        resultado = obj.soma(2, 3)
        self.assertEquals(resultado, 5)

if __name__ == '__main__':
    unittest.main() 
