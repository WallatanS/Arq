class ListaDeTarefas:
    def __init__(self):
        self.tarefas = []

    def adicionar_tarefa(self, tarefa):
        self.tarefas.append(tarefa)

    def remover_tarefa(self, tarefa):
        if tarefa in self.tarefas:
            self.tarefas.remove(tarefa)

    def marcar_como_concluida(self, tarefa):
        for i in range(len(self.tarefas)):
            if self.tarefas[i] == tarefa:
                self.tarefas[i] = f"{tarefa} (Concluída)"