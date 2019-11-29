#include <stdio.h>
#include <stdlib.h>
#define word 30

//registros
typedef struct fazenda{
  	int numDeMaquinas;
  	int numDeOperadores;

}faz;

typedef struct operador{
  	char nome[70];
  	int codDoOperador;

}ope;

typedef struct maquinas{
  	int codDaMaquina;
  	float qtdeConsumo;
  	int codDoOperador;
//int codComb;

}maq;

typedef struct consumo{
  	float consumoDia;
  	char datinha[10];
  /*float consumoSem;
  float consumoMes;
  float consumoAno;
  VER SE ISSO � NECESSARIO
  */
}cons;

typedef struct produto{
  	int codComb;
  	char descricao[70];

}prod;

//fun��es
void cadastrarFazenda();
void cadastrarOperador();
void cadastrarMaquinas();
void cadastrarConsumo();
void cadastrarProduto();
void localizarFazenda();
void localizarOperador();
void localizarMaquinas();
void localizarConsumo();
void localizarProduto();
void excluirFazenda();
void excluirOperador();
void excluirMaquinas();
void excluirConsumo();
void excluirProduto();
void alterarFazenda();
void alterarOperador();
void alterarMaquinas();
void alterarConsumo();
void alterarProduto();
void relatorioFazenda();
void relatorioOperador();
void relatorioMaquinas();
void relatorioConsumo();
void relatorioProduto();
//void testeArquivo();
FILE *abrirArquivo(char, char *);
void fechaArquivo(FILE*);
void menuprincipal();
int menuprincipal_f(int);
void menucad();
void menucad_f(int);
void menuexc();
void menuexc_f(int);
void menuloc_f(int);
void menuloc();
void menurelat_f(int);
void menurelat();
void menualt();
void menualt_f(int);
int busca(char*,char*,char*);

int main(){
  	printf("Controle De Combustivel no Agronegocio\n");
  	menuprincipal();
}

void cadastrarFazenda(){
	faz numerozinhoMaq,numerozinhoOpe;
	int status;
	FILE *DADOS;
	char modo = 'a';
	faz *ptr;

	DADOS = fopen("joao.txt","rt");
	if(DADOS == NULL){
      	printf("Retornou <NULL>\n");
      	status=0;
    }
    else{
      	printf("Arquivo criado\n");
      	status=1;
    }
  	fechaArquivo(DADOS);

  	if (status==1){
    	ptr=(faz*) realloc(ptr,1 *sizeof(faz));
    	DADOS = abrirArquivo(modo,"joao.txt");
    	printf("Quantas maquinas na fazenda?\n");
    	scanf("%d",&numerozinhoMaq.numDeMaquinas);
    	printf("Quantos operadores de maquina na fazenda?\n");
    	scanf("%d", &numerozinhoOpe.numDeOperadores);
    	fprintf(DADOS,"\n %d \t\t %d",numerozinhoMaq.numDeMaquinas,numerozinhoOpe.numDeOperadores);
    	fechaArquivo(DADOS);
  	}
  	else{
    	ptr=(faz*) malloc(1 *sizeof(faz));
    	DADOS = abrirArquivo(modo,"joao.txt");
    	printf("Quantas maquinas na fazenda?\n");
    	scanf("%d",&numerozinhoMaq.numDeMaquinas);
    	printf("Quantos operadores de maquina na fazenda?\n");
    	scanf("%d", &numerozinhoOpe.numDeOperadores);
    	fprintf(DADOS,"\n %d \t\t %d",numerozinhoMaq.numDeMaquinas,numerozinhoOpe.numDeOperadores);
    	fechaArquivo(DADOS);
  	}
}

void cadastrarOperador(){
	ope nominho,codigozinho;
  	int numDeRegistro,numDeRegistro2,i,status;
  	FILE *DADOS;
  	char modo = 'a';
  	ope *ptr;

    DADOS = fopen("allan.txt","rt");
    if(DADOS == NULL){
      	printf("Retornou <NULL>\n");
      	status=0;
    }
    else{
      	printf("Arquivo criado\n");
      	status=1;
    }
  	fechaArquivo(DADOS);

  	printf("Gostaria de cadastrar quantos operadores?");
  	scanf("%d",&numDeRegistro);
  	if (status==1){
    	ptr=(ope*) realloc(ptr,numDeRegistro * sizeof(ope));
    	DADOS= abrirArquivo(modo, "allan.txt");
    	for(i=0;i<numDeRegistro;i++){
      		printf("Digite o nome do operador\n");
      		scanf("%s",&nominho.nome);
      		printf("Digite o codigo do operador\n");
      		scanf("%d",&codigozinho.codDoOperador);
      		fprintf(DADOS,"\n %s \t\t %d",nominho.nome,codigozinho.codDoOperador);
  		}
    	fechaArquivo(DADOS);
  	}
  	else{
    	ptr=(ope*) malloc(numDeRegistro * sizeof(ope));
    	DADOS= abrirArquivo(modo, "allan.txt");
    	for(i=0;i<numDeRegistro;i++){
    		printf("Digite o nome do operador\n");
    		scanf("%s",&nominho.nome);
    		printf("Digite o codigo do operador\n");
    		scanf("%d",&codigozinho.codDoOperador);
			fprintf(DADOS,"\n %s \t\t %d",nominho.nome,codigozinho.codDoOperador);
    	}
    	fechaArquivo(DADOS);
  	}
}

void cadastrarMaquinas(){
	maq codigozinhoMaq,consuminho,codigozinhoOpe;
	/*int codDaMaquina; float qtdeConsumo;int codDoOperador;*/
  	int status,i,numDeRegistro;
  	char modo = 'a';
  	faz *ptr;
  	FILE *DADOS;

  	DADOS = fopen("vitao.txt","rt");
  	if(DADOS == NULL){
      	printf("Retornou <NULL>\n");
      	status=0;
    }
    else{
      	printf("Arquivo criado\n");
      	status=1;
    }
  	fechaArquivo(DADOS);

  	printf("Gostaria de registrar quantas maquinas?\n");
  	scanf("%d",&numDeRegistro);
  	if(status==1){
  	     ptr=(faz*) realloc(ptr,numDeRegistro*sizeof(faz));
		     DADOS=abrirArquivo(modo,"vitao.txt");
		          for(i=0;i<numDeRegistro;i++){
			             printf("Qual o codigo da maquina:?\n");
			             scanf("%d",&codigozinhoMaq.codDaMaquina);
			             printf("Quanto a maquina consome km/l?\n");
			             scanf("%f",&consuminho.qtdeConsumo);
			             printf("Qual o codigo do operador da maquina?\n");
			             scanf("%d",&codigozinhoOpe.codDoOperador);
			             fprintf(DADOS,"\n %d \t\t %f km/l \t\t %d",codigozinhoMaq.codDaMaquina,consuminho.qtdeConsumo,codigozinhoOpe.codDoOperador);
		           }
        fechaArquivo(DADOS);
	   }
	   else{
		     ptr=(faz*) malloc(numDeRegistro*sizeof(faz));
		     DADOS=abrirArquivo(modo,"vitao.txt");
		          for(i=0;i<numDeRegistro;i++){
			             printf("Qual o codigo da maquina?\n");
			             scanf("%d",&codigozinhoMaq.codDaMaquina);
			             printf("Quanto a maquina consome km/l?\n");
			             scanf("%f",&consuminho.qtdeConsumo);
			             printf("Qual o codigo do operador da maquina?\n");
			             scanf("%d",&codigozinhoOpe.codDoOperador);
			             fprintf(DADOS,"\n %d \t\t %f km/l \t\t %d",codigozinhoMaq.codDaMaquina,consuminho.qtdeConsumo,codigozinhoOpe.codDoOperador);
		           }
	   }
}

void cadastrarConsumo(/*int status*/){
  	cons consuminho,datinha;
  	int status;
  	char modo = 'a';
  	cons *ptr;
  	FILE *DADOS;

	DADOS = fopen("william.txt","rt");
    if(DADOS == NULL){
      	printf("Retornou <NULL>\n");
      	status=0;
    }
    else{
      	printf("Arquivo criado\n");
      	status=1;
    }
  	fechaArquivo(DADOS);

  	if (status==1){
    	ptr=(cons*) realloc(ptr,1 *sizeof(cons));
    	DADOS = abrirArquivo(modo,"william.txt");
    	printf("Qual a data de hoje?\n");
    	scanf("%s",&datinha.datinha);
      setbuf(stdin,NULL);
    	printf("Qual o consumo do dia?\n");
    	scanf("%f", &consuminho.consumoDia);
    	fprintf(DADOS,"\n %s \t\t %f",datinha.datinha,consuminho.consumoDia);
    	fechaArquivo(DADOS);
  	}
  	else{
    	ptr=(cons*) malloc(1 *sizeof(cons));
    	DADOS = abrirArquivo(modo,"william.txt");
    	printf("Qual a data de hoje? \n");
    	scanf("%s",&datinha.datinha);
    	printf("Qual o consumo do dia?\n");
    	scanf("%f", &consuminho.consumoDia);
    	fprintf(DADOS,"\n %s \t\t %f",datinha.datinha,consuminho.consumoDia);
    	fechaArquivo(DADOS);
  	}
}

void cadastrarProduto(){
    prod codigozinho,descricaozinha;
    int status,i,numDeProdutos;
    char modo = 'a';
    prod *ptr;
    FILE *DADOS;

    DADOS = fopen("katinha.txt","rt");
    if(DADOS == NULL){
        printf("Retornou NULL \n");
        status = 0;
    }
    else{
        printf("Arquivo criado\n");
        status = 1;
    }
    fechaArquivo(DADOS);

    printf("Cadastrar quantos produtos?");
    scanf("%d",&numDeProdutos);
    if (status==1){
        for(i=0;i<numDeProdutos;i++){
    	   ptr=(prod*) realloc(ptr,1 *sizeof(prod));
    	   DADOS = abrirArquivo(modo,"katinha.txt");
    	   printf("Qual o codigo do produto?\n");
    	   scanf("%d",&codigozinho.codComb);
    	   printf("Qual a descricao do produto?\n");
    	   scanf("%s", &descricaozinha.descricao);
    	   fprintf(DADOS,"\n %d \t\t %s",codigozinho.codComb,descricaozinha.descricao);
    	   fechaArquivo(DADOS);
         }
  	}
  	else{
        for(i=0;i<numDeProdutos;i++){
          ptr=(prod*) malloc(1 *sizeof(prod));
          DADOS = abrirArquivo(modo,"katinha.txt");
          printf("Qual o codigo do produto?\n");
          scanf("%d",&codigozinho.codComb);
          printf("Qual a descricao do produto?\n");
          scanf("%s", &descricaozinha.descricao);
          fprintf(DADOS,"\n %d \t\t %s",codigozinho.codComb,descricaozinha.descricao);
          fechaArquivo(DADOS);
       }
  	}
}

void localizarFazenda(){

    busca("william.txt", "cons" , "cons.datinha");
}

void localizarOperador(){

}

void localizarMaquinas(){

}

void localizarConsumo(){

}

void localizarProduto(){

}

void excluirFazenda(){

}

void excluirOperador(){

}

void excluirMaquinas(){

}

void excluirConsumo(){

}

void excluirProduto(){

}

void alterarFazenda(){

}

void alterarOperador(){

}

void alterarMaquinas(){

}

void alterarConsumo(){

}

void alterarProduto(){

}

void relatorioFazenda(){

}

void relatorioOperador(){

}

void relatorioMaquinas(){

}

void relatorioConsumo(){

}

void relatorioProduto(){

}

FILE *abrirArquivo(char modo, char *caminho){
    FILE *DADOS;
        switch(modo){
            case 'g':
            DADOS = fopen(caminho, "wt");
            	break;
            case 'l':
            DADOS = fopen(caminho, "rt");
           		break;
            case 'a':
            DADOS = fopen(caminho, "a");
   	        	break;
          	}
          	if (DADOS == NULL){
           	    printf ("\nNao foi possivel abrir o aquivo");
          	    exit(0);
          	}
          return DADOS;
}
void fechaArquivo(FILE *DADOS){
    fclose(DADOS);
}

int busca (char *caminho, char *registro, char *busca){
    int achou=-1,posicao=0,status;
    char nomep[40];
    abrirArquivo('l',caminho);
    printf("\nDgite o nome a ser procurado:");
    scanf("%s", nomep);
    FILE  *DADOS;
    DADOS=fopen(caminho,"rt");
    /*if(DADOS == NULL){
        printf("Retornou NULL \n");
          system("pause");
        status = 0;
    }
    else{
        printf("Arquivo criado\n");
          system("pause");
        status = 1;
    }
    fechaArquivo(DADOS);*/

    while((!feof(DADOS))&&(achou==-1)){
      printf(" entrou no while\n");
        fread(&registro, sizeof(registro), 1, DADOS);
        printf("LEU\n");
        if (!feof(DADOS)){
            if (strcmp(nomep, busca)==0){
                achou=1;
                printf("ACHOU\n");
            }
            else{
                posicao++;
                printf("posicao %d\n",posicao);
                printf("NAO ACHOU \n" );
                system("pause");
            }
            printf("valor do achou:%d\n",achou);
              system("pause");
        }
        else{
            posicao=-1;
        }
    }
    printf("posicao:%d\n",posicao);
      system("pause");
    if (achou==-1){
        posicao=-1;
    }
    fechaArquivo(DADOS);
    return(posicao);
}

/*void testeArquivo(){
  FILE *DADOS;
    DADOS = fopen("william.txt","rt");
    if(DADOS == NULL){
      printf("Retornou <NULL>\n");
    }
    else{
      printf("Arquivo criado\n");
    }
  fechaArquivo(DADOS);
}*/

void menuprincipal(){
	int op;
  	printf("----------------------------------------------\n");
  	printf("1 - Cadastrar\n");
  	printf("2 - Localizar\n");
  	printf("3 - Excluir\n");
  	printf("4 - Alterar\n");
  	printf("5 - Relatorio\n");
  	printf("6 - SAIR\n");
  	printf("----------------------------------------------\n");
  	printf(">>> ");
  	scanf("%d", &op);
  	menuprincipal_f(op);
}

int menuprincipal_f(int op){
  	switch (op){
    	case 1:menucad(op);
            break;
    	case 2:menuloc(op);
            break;
    	case 3:menuexc(op);
            break;
    	case 4:menualt(op);
            break;
    	case 5:menurelat(op);
            break;
    	case 6:return 0;
            break;
    	default:printf("**Opcao Invalida**\n\n");
        menuprincipal();
            break;
  	}
}

void menucad(){
	int op;
  	printf("---------------------Cadastrar---------------------\n");
  	printf("1 - Cadastrar fazenda\n");
  	printf("2 - Cadastrar operador\n");
  	printf("3 - Cadastrar maquinas\n");
  	printf("4 - Cadastrar consumo\n");
  	printf("5 - Cadastrar produto\n");
  	printf("6 - VOLTAR\n");
  	printf("---------------------------------------------------\n");
  	printf(">>> ");
  	scanf("%d" , &op);
  	system("cls");
  	menucad_f(op);
}

void menucad_f(int op){
  	switch (op){
    	case 1:cadastrarFazenda();
            break;
    	case 2:cadastrarOperador();
            break;
    	case 3:cadastrarMaquinas();
            break;
    	case 4:cadastrarConsumo();
            break;
    	case 5:cadastrarProduto();
            break;
    	case 6:menuprincipal();
            break;
    	default:printf("**Opcao Invalida**\n\n");
        menucad();
            break;
  	}
}

void menuloc(){
	int op;
  	printf("----------------------Localizar----------------------\n");
  	printf("1 - Localizar fazenda\n");
  	printf("2 - Localizar operador\n");
  	printf("3 - Localizar maquinas\n");
  	printf("4 - Localizar consumo\n");
  	printf("5 - Localizar produto\n");
  	printf("6 - VOLTAR\n");
  	printf("-----------------------------------------------------\n");
  	printf(">>> ");
  	scanf("%d" , &op);
  	system("cls");
  	menuloc_f(op);
}

void menuloc_f(int op){
  	switch (op){
    	case 1:localizarFazenda();
            break;
    	case 2:localizarOperador();
            break;
    	case 3:localizarMaquinas();
            break;
    	case 4:localizarConsumo();
            break;
    	case 5:localizarProduto();
            break;
    	case 6:menuprincipal();
            break;
    	default:printf("**Opcao Invalida**\n\n");
        menuloc();
            break;
  	}
}

void menuexc(){
	int op;
 	 printf("---------------------Excluir---------------------\n");
  	printf("1 - Excluir fazenda\n");
  	printf("2 - Excluir operador\n");
  	printf("3 - Excluir maquinas\n");
  	printf("4 - Excluir consumo\n");
  	printf("5 - Excluir produto\n");
  	printf("6 - VOLTAR\n");
  	printf("-------------------------------------------------\n");
  	printf(">>> ");
  	scanf("%d" , &op);
  	system("cls");
  	menuexc_f(op);
}

void menuexc_f(int op){
  	switch (op){
    	case 1:excluirFazenda();
            break;
    	case 2:excluirOperador();
            break;
    	case 3:excluirMaquinas();
            break;
    	case 4:excluirConsumo();
            break;
    	case 5:excluirProduto();
            break;
    	case 6:menuprincipal();
            break;
    	default:printf("**Opcao Invalida**\n\n");
        menuexc();
            break;
  }
}

void menualt(){
	int op;
  	printf("--------------------Alterar--------------------\n");
  	printf("1 - Alterar fazenda\n");
  	printf("2 - Alterar operador\n");
  	printf("3 - Alterar maquinas\n");
  	printf("4 - Alterar consumo\n");
  	printf("5 - Alterar produto\n");
  	printf("6 - VOLTAR\n");
  	printf("-----------------------------------------------\n");
  	printf(">>> ");
  	scanf("%d" , &op);
  	system("cls");
  	menualt_f(op);
}

void menualt_f(int op){
  	switch (op){
    	case 1:alterarFazenda();
            break;
    	case 2:alterarOperador();
            break;
    	case 3:alterarMaquinas();
            break;
    	case 4:alterarConsumo();
            break;
    	case 5:alterarProduto();
            break;
    	case 6:menuprincipal();
            break;
    	default:printf("**Opcao Invalida**\n\n");
    	menualt();
            break;
  }
}

void menurelat(){
	int op;
  	printf("-------------------Relatorio-------------------\n");
  	printf("1 - Relatorio fazenda\n");
  	printf("2 - Relatorio operador\n");
  	printf("3 - Relatorio maquinas\n");
  	printf("4 - Relatorio consumo\n");
  	printf("5 - Relatorio produto\n");
  	printf("6 - VOLTAR\n");
  	printf("-----------------------------------------------\n");
  	printf(">>> ");
  	scanf("%d" , &op);
  	system("cls");
  	menurelat_f(op);
}

void menurelat_f(int op){
  	switch (op){
    	case 1:relatorioFazenda();
        	break;
    	case 2:relatorioOperador();
        	break;
    	case 3:relatorioMaquinas();
        	break;
    	case 4:relatorioConsumo();
        	break;
    	case 5:relatorioProduto();
    		break;
    	case 6:menuprincipal();
        	break;
    	default:printf("**Opcao Invalida**\n\n");
        menurelat();
        	break;
	}
}
