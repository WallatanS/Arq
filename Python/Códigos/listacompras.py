# Inicializa uma lista vazia para a lista de compras
lista_de_compras = []

# Função para adicionar um item à lista de compras
def adicionar_item():
    item = input("Digite o item que deseja adicionar à lista: ")
    lista_de_compras.append(item)
    print(f"{item} foi adicionado à lista de compras.")

# Função para exibir a lista de compras
def exibir_lista():
    print("\nLista de Compras:")
    for i, item in enumerate(lista_de_compras, start=1):
        print(f"{i}. {item}")

# Função para remover um item da lista de compras
def remover_item():
    exibir_lista()
    try:
        numero_item = int(input("Digite o número do item que deseja remover: "))
        if 1 <= numero_item <= len(lista_de_compras):
            item_removido = lista_de_compras.pop(numero_item - 1)
            print(f"{item_removido} foi removido da lista de compras.")
        else:
            print("Número de item inválido.")
    except ValueError:
        print("Por favor, insira um número válido.")

# Loop principal para interagir com o usuário
while True:
    print("\nOpções:")
    print("1. Adicionar item à lista")
    print("2. Exibir lista de compras")
    print("3. Remover item da lista")
    print("4. Sair")

    escolha = input("Escolha uma opção (1/2/3/4): ")

    if escolha == "1":
        adicionar_item()
    elif escolha == "2":
        exibir_lista()
    elif escolha == "3":
        remover_item()
    elif escolha == "4":
        print("Saindo do programa. Lista de compras final:")
        exibir_lista()
        break
    else:
        print("Opção inválida. Por favor, escolha uma opção válida.")
