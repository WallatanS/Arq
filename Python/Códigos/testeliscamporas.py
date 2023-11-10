import unittest
from io import StringIO
import sys

# Importe o código da lista de compras que você deseja testar
from listacompras import adicionar_item, remover_item

class TestListaDeCompras(unittest.TestCase):
    def setUp(self):
        # Redefine a lista de compras antes de cada teste
        self.lista_de_compras = []

    def test_adicionar_item(self):
        item = "Melancia"
        adicionar_item(self.lista_de_compras, item)
        self.assertIn(item, self.lista_de_compras)

    def test_remover_item(self):
        item = "Banana"
        self.lista_de_compras.append(item)
        item_removido = remover_item(self.lista_de_compras, item)
        self.assertNotIn(item, self.lista_de_compras)
        self.assertEqual(item_removido, item)

    def test_remover_item_inexistente(self):
        item = "Pera"
        item_removido = remover_item(self.lista_de_compras, item)
        self.assertNotIn(item, self.lista_de_compras)
        self.assertIsNone(item_removido)

if __name__ == '__main__':
    unittest.main()
