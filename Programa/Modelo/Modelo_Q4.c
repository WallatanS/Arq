#include <stdio.h>
#include <stdlib.h>
#include <math.h>
//#include <stdbool.h>
//#include <string.h>
//#include <conio.h>

//Registros
typedef struct{
  char nome[50];
  float peso;
  float altura;
  float imc;
} Dados;

//Protótipos
int menu(Dados *dados, int n, int *np);
int nAtletas();
int cadastro(Dados *dados, int n);
void menu_text(int op, Dados *dados, int  n, int *np);
void calcular_imc(Dados *dados, int  n, int *np);
void exibir(Dados *dados, int  n, int *np);
void insercao_dados(int cont, int a, Dados *dados);

//Var Globais
int main () {
  int n, np[3];
  np[0]=0;np[1]=0;np[2]=0;
  Dados dados[80];
  dados[1].peso = 0;
  dados[1].imc = 0;
  menu(dados, n, np);
}

int menu(Dados *dados, int n, int *np)
{
  int op;
  printf ("\n Software Calculo de 'IMC' \n");
  printf ("\n Digite o numero da opcao desejada:\n");
  printf (" \n 1: Cadastro \n 2: Calcular IMC: \n 3: Exibir \n 4: Sair \n\n");
	scanf ("%d%[^\n]", &op);
  menu_text(op, dados, n, np);
}

void menu_text(int op, Dados *dados, int  n, int *np)
  {
    switch(op){
      case 1:
        n=cadastro(dados, n);
        menu(dados, n, np);
        break;
      case 2:
        calcular_imc(dados, n, np);
        menu(dados, n, np);
        break;
      case 3:
        exibir(dados, n, np);
        menu(dados, n, np);
        break;
      case 4 :
        printf("Fechando aplicao...");
        break;
      default :
        printf("\n Opcao nao existente...\n");
        menu(dados, n, np);
        break;
      }

  }

//cadastro de usuario
int cadastro(Dados *dados, int n)
  {
    int  cont, a=1;
    printf("\nCadastro de altetas\n");
    n = nAtletas();
      for (cont=0; cont < n; cont++)
      {
        insercao_dados(cont, a, dados);
        a=a+1;
      }
      return n;
  }

void insercao_dados(int cont,int a, Dados *dados)
  {
    printf("\nAtleta Numero %i\n", a );
    printf("\nNome: \n");
    scanf("%s%[^\n]", &dados[cont].nome);
    printf("\nPeso: \n");     scanf("%f%[^\n]", &dados[cont].peso);     printf("\nAltura: \n");     scanf("%f%[^\n]", &dados[cont].altura);
  }

int nAtletas()
{     int n;     do {
 	 	  printf (" \nInforme o numero de atletas: \n");  	 	  printf (" \n5 >= Numero <= 80 \n");  	 	  scanf ("%d%[^\n]", &n);
    } while (n < 5 || n > 80 );     return n;
 }

// calculo de IMC
 void calcular_imc(Dados *dados, int  n, int *np)
 {
    int cont=1;
    if (dados[cont].peso == 0)
    {
      printf("\n Sem dados para serem calculados\n");
    }else
    {
      for (cont=0; cont < n; cont++)
      {
        dados[cont].imc= dados[cont].peso/pow(dados[cont].altura,2);
        if (dados[cont].imc < 18.5)
          {
            np[0] = np[0]+1;
          }
        else if ((dados[cont].imc >= 18.5) && (dados[cont].imc < 25 ))
          {
            np[1] = np[1]+1;
          }
        else if (dados[cont].imc >= 25)
          {
            np[2] = np[2]+1;
          }
      }
      printf("\n IMC dos altletas calculado \n" );
    }

}

//exibir dados
void exibir(Dados *dados, int  n, int *np)
{
  int cont=1;
  if (dados[cont].imc != 0)
    {
      printf("\n Exibicao\n");
      for (cont=0; cont < n; cont++)
        {
          printf("\nAtleta N: %i\n", cont+1);
          printf(" Nome: %s \n", dados[cont].nome);
          printf(" Peso: %.2f \n", dados[cont].peso);
          printf(" Altura: %.2f \n", dados[cont].altura);
          printf(" IMC: %.2f \n", dados[cont].imc);
        }
      printf("\nAtletas abaixo do peso: %d \n", np[0]);
      printf("Atletas com o peso normal: %d \n", np[1]);
      printf("Atletas acima do peso: %d \n", np[2]);
      //np[0]=0;np[1]=0;np[2]=0;

    }else
      printf("\n Sem dados para serem exibidos \n");
}
