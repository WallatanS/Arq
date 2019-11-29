  //Gerenciamento de Atendimento em Oficina Mecânica com apresentação de custo do serviço
//

/*
*  -ASPECTOS ESTRUTURAIS  INDENTAÇAO
*  -ESTRUTURA DE DADOS(REGISTROS)  STRUCT
*  -ALOCAÇAO DINAMICA
*  -PERSISTENCIA EM ARQUIVOS
*  -CONTER AS SEGUINTES FUNCIONALIDADES
*   ----CADASTRAR,EXCLUIR,ALTERAR,LOCALIZAR
*   ----RELATORIOS
*  -MANTER RELACIONAMENTO ENTRE AS INFORMAÇOES
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include <conio.h>
//Structs
typedef struct Cliente {
  char nome[60];
  long long cpf;
  char serv[20];
}cli;

typedef struct Servico {
  int statsr;
  long long cpf_f;
  long long cpf;
  char placa[7];
  char desc[20];
  float custo;
}ser;

typedef struct Funcionario {
  long long cpf_f;
  char nome_f[60];
}fun;

// VAR Global
int op;
int opx, opc, ops, opf;
int i,resp;
//Prototipos
void menup();
int menup_f();
void menucli();
void menucli_f();
void menuser();
void menuser_f();
void menufun();
void menufun_f();
void cadastrocl();
void cadastrosr();
void cadastrofun();
void relatoriocl();
void relatoriosr();
void relatoriofun();
void editarcl();
void editarsr();
void editarfun();
void excluircl();
void excluirsr();
void excluirfun();
void localizarcl();
void localizarsr();
void localizarfun();
FILE *AbrirArquivo(char , char*);
void FechaArquivo(FILE *OFICINA);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void main()
{
  printf("Gerenciamento de Atendimento em Oficina Mecânica\n");
  menup();
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void menup()
{
  printf("----------------------------------------------\n");
  printf("1.Menu Clientes\n");
  printf("2.Menu Serviços\n");
  printf("3.Menu Funcionarios\n");
  printf("4.SAIR\n");
  printf("----------------------------------------------\n");
  printf(">>> ");
  scanf("%d", &op);
  menup_f();
}

int menup_f()
{
  switch (op)
  {
    case 1:
            menucli();
            break;
    case 2:
            menuser();
            break;
    case 3:
            menufun();
            break;
    case 4:
            return 0;
            break;
    default:
            printf("**Opcao Invalida**\n\n");
            menup();
            break;
  }
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void menucli()
{
  printf("-------------------Cliente-------------------\n");
  printf("1.Cadastrar\n");
  printf("2.Relatorio\n");
  printf("3.Editar\n");
  printf("4.Excluir\n");
  printf("5.Localizar\n");
  printf("6.VOLTAR\n");
  printf("---------------------------------------------\n");
  printf(">>> ");
  scanf("%i",&opc);
  system("cls");
  menucli_f();
}

void menucli_f()
{
  switch (opc)
  {
    case 1:
            cadastrocl();
            break;
    case 2:
            relatoriocl();
            break;
    case 3:
            editarcl();
            break;
    case 4:
            excluircl();
            break;
    case 5:
            localizarcl();
            break;
    case 6:
            menup();
            break;
    default:
            printf("**Opcao Invalida**\n\n");
            menucli();
            break;
  }
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void menufun()
{
  printf("-------------------Funcionario-------------------\n");
  printf("1.Cadastrar\n");
  printf("2.Relatorio\n");
  printf("3.Editar\n");
  printf("4.Excluir\n");
  printf("5.Localizar\n");
  printf("6.VOLTAR\n");
  printf("-------------------------------------------------\n");
  printf(">>> ");
  scanf("%i",&opf);
  system("cls");
  menufun_f();
}

void menufun_f()
{
  switch (opf)
  {
    case 1:
            cadastrofun();
            break;
    case 2:
            relatoriofun();
            break;
    case 3:
            editarfun();
            break;
    case 4:
            excluirfun();
            break;
    case 5:
            localizarfun();
            break;
    case 6:
            menup();
            break;
    default:
            printf("**Opcao Invalida**\n\n");
            menufun();
            break;
  }
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void menuser()
{
  printf("------------------Servico-------------------\n");
  printf("1.Relatorio\n");
  printf("2.Editar\n");
  printf("3.Excluir\n");
  printf("4.Localizar\n");
  printf("5.VOLTAR\n");
  printf("--------------------------------------------\n");
  printf(">>> ");
  scanf("%i",&ops);
  system("cls");
  menuser_f();
}

void menuser_f()
{
  switch (ops)
  {
    case 1:
            relatoriosr();
            break;
    case 2:
            editarsr();
            break;
    case 3:
            excluirsr();
            break;
    case 4:
            localizarsr();
            break;
    case 5:
            menup();
            break;
    default:
            printf("**Opcao Invalida**\n\n");
            menuser();
            break;
  }
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void cadastrocl()
{
  cli n,c,s;
  int status,i,numerodereg;
  char modo = 'a';
  FILE *OFICINA;
  cli *ptr;
  OFICINA = fopen("clientes.txt","rt");
  if(OFICINA == NULL)
  {
    status=0;
  }
  else
  {
    status=1;
  }
  FechaArquivo(OFICINA);
  if(status = 1)
  {
    printf("O Arquivo j%c existe: *REALLOC* \n\n", 160);
    printf("Informe o numero de clientes a serem cadastrados: ");
    scanf("%i",&numerodereg);
    ptr = (cli*) realloc(ptr, numerodereg * sizeof(cli));
    OFICINA = AbrirArquivo(modo , "clientes.txt");
    for (i = 0 ; i < numerodereg ; i++)
    {
      setbuf(stdin,NULL);
      printf("Informe o NOME do cliente: ");
      scanf("%[^\n]s",&n.nome);
      printf("Informe o CPF do cliente: ");
      scanf("%lld",&c.cpf);
      setbuf(stdin,NULL);
      printf("Informe o SERVICO para o cliente: ");
      scanf("%[^\n]s",&s.serv);
      fprintf(OFICINA, "\r NOME >> %s \r CPF >> %lld \r SERVICO >> %s\r", n.nome  , c.cpf , s.serv);
      fprintf(OFICINA,"------------------------------------------------------------------------------------------------------------------");
    }
    FechaArquivo(OFICINA);
    menucli();
  }
  else
  {
    printf("Arquivo Inexistente: *ALLOC* \n\n");
    printf("Informe o numero de clientes a serem cadastrados: ");
    scanf("%i",&numerodereg);
    ptr = (cli*) malloc(numerodereg * sizeof(cli));
    OFICINA = AbrirArquivo(modo , "clientes.txt");
    for (i = 0 ; i < numerodereg ; i++)
    {
      setbuf(stdin,NULL);
      printf("Informe o NOME do cliente: ");
      scanf("%[^\n]s",&n.nome);
      printf("Informe o CPF do cliente: ");
      scanf("%lld",&c.cpf);
      setbuf(stdin,NULL);
      printf("Informe o SERVICO para o cliente: ");
      scanf("%[^\n]s",&s.serv);
      fprintf(OFICINA, "\r NOME >> %s \r CPF >> %lld \r SERVICO >> %s\r", n.nome  , c.cpf , s.serv);
      fprintf(OFICINA,"------------------------------------------------------------------------------------------------------------------");
    }
    FechaArquivo(OFICINA);
    menucli();
  }
}
void cadastrosr() // (verificar se o cliente(localizarcl) e o funcionario(localizarfun) ja sao cadastrados)
{

}
void cadastrofun()
{
  fun n,c;
  int status,i,numerodereg;
  char modo = 'a';
  FILE *OFICINA;
  fun *ptr;
  OFICINA = fopen("funcionarios.txt","rt");
  if(OFICINA == NULL)
  {
    status=0;
  }
  else
  {
    status=1;
  }
  FechaArquivo(OFICINA);
  if(status = 1)
  {
    printf("O Arquivo ja existe: *REALLOC* \n\n");
    printf("Informe o numero de funcionarios a serem cadastrados: ");
    scanf("%i",&numerodereg);
    ptr = (fun*) realloc(ptr, numerodereg * sizeof(fun));
    OFICINA = AbrirArquivo(modo , "funcionarios.txt");
    for (i = 0 ; i < numerodereg ; i++)
    {
      setbuf(stdin,NULL);
      printf("Informe o NOME do funcionario: ");
      scanf("%[^\n]s",&n.nome_f);
      printf("Informe o CPF do funcionario: ");
      scanf("%lld",&c.cpf_f);
      setbuf(stdin,NULL);
      fprintf(OFICINA, "\r NOME >> %s \r CPF >> %lld\r", n.nome_f , c.cpf_f);
      fprintf(OFICINA,"----------------------------------------------------------------");
    }
    FechaArquivo(OFICINA);
    menufun();
  }
  else
  {
    printf("Arquivo Inexistente: *ALLOC* \n\n");
    printf("Informe o numero de clientes a serem cadastrados: ");
    scanf("%i",&numerodereg);
    ptr = (fun*) malloc(numerodereg * sizeof(fun));
    OFICINA = AbrirArquivo(modo , "funcionarios.txt");
    for (i = 0 ; i < numerodereg ; i++)
    {
      setbuf(stdin,NULL);
      printf("Informe o NOME do funcionario: ");
      scanf("%[^\n]s",&n.nome_f);
      printf("Informe o CPF do funcionario: ");
      scanf("%lld",&c.cpf_f);
      setbuf(stdin,NULL);
      fprintf(OFICINA, "\r NOME >> %s \r CPF >> %lld\r", n.nome_f  , c.cpf_f);
      fprintf(OFICINA,"----------------------------------------------------------------");
    }
    FechaArquivo(OFICINA);
    menufun();
  }
}
void relatoriocl() //Imprimindo apenas a ultima linha
{
  FILE *OFICINA;
  char c;
  OFICINA = fopen("clientes.txt" , "rt");
  if (OFICINA == NULL)
  {
    printf("Erro ao abrir arquivo\n");
    exit(0);
  }
  c = fgetc(OFICINA);
  while(c != EOF)
  {
    printf("%c\n",c );
    c = fgetc(OFICINA);
  }
  fclose(OFICINA);
}
void relatoriosr()
{

}
void relatoriofun()
{

}
void editarcl()
{

}
void editarsr()
{

}
void editarfun()
{

}
void excluircl()
{

}
void excluirsr()
{

}
void excluirfun()
{

}
void localizarcl()
{

}
void localizarsr()
{

}
void localizarfun()
{

}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
FILE *AbrirArquivo(char modo,char caminho[30])
{
  FILE *OFICINA;
    switch(modo)
    {
      case 'g':
      OFICINA = fopen(caminho, "wt");
      break;
      case 'l':
      OFICINA = fopen(caminho, "rt");
      break;
      case 'a':
      OFICINA = fopen(caminho, "a");
      break;
    }
    if (OFICINA == NULL)
    {
      printf("Nao foi possivel abrir o arquivo");
      exit(0);
    }
    return OFICINA;
}

void FechaArquivo(FILE *OFICINA)
{
  fclose(OFICINA);
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
