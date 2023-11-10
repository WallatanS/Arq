import unittest
from calculadora import Calculadora
class TestCalculadora(unittest.TestCase):
    def test_soma(self):
        calc = Calculadora()
        self.assertEqual(calc.soma(2, 3), 5)

    def test_subtracao(self):
        calc = Calculadora()
        self.assertEqual(calc.subtracao(5, 3), 2)

    def test_multiplicacao(self):
        calc = Calculadora()
        self.assertEqual(calc.multiplicacao(2, 3), 6)

    def test_divisao(self):
        calc = Calculadora()
        self.assertEqual(calc.divisao(6, 2), 3)
        with self.assertRaises(ValueError):
            calc.divisao(5, 0)

if __name__ == '__main__':
    unittest.main()