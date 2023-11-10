import unittest
from listatarefa import ListaDeTarefas
class TestListaDeTarefas(unittest.TestCase):
    def test_adicionar_tarefa(self):
        lista = ListaDeTarefas()
        lista.adicionar_tarefa("Fazer compras")
        self.assertIn("Fazer compras", lista.tarefas)

    def test_remover_tarefa(self):
        lista = ListaDeTarefas()
        lista.adicionar_tarefa("Estudar")
        lista.remover_tarefa("Estudar")
        self.assertNotIn("Estudar", lista.tarefas)

    def test_marcar_como_concluida(self):
        lista = ListaDeTarefas()
        lista.adicionar_tarefa("Limpar casa")
        lista.marcar_como_concluida("Limpar casa")
        self.assertIn("Limpar casa (Concluída)", lista.tarefas)

if __name__ == '__main__':
    unittest.main()