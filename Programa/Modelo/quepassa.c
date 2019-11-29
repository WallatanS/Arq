#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
//Registro de dados
struct registro
{
    char nome[40];
    char matricula[35];
    char cpf[20];
    char telefone[30];
    char redesocial[40];
    char status;
} reg;
FILE *fp;

/*protótipo das funcoes*/
void incluir (void);
void consultar(void);
void excluir(void);
void alterar(void);
void abrir(char tipo[3]);
void listar(void);

void main(void)
{
    char opcao[1], op;
    do
    {
        do
        {
            printf("\n\n\n\n\n\n\n");
            printf("\t########################################################\n");
            printf("\t#                                                      #\n");
            printf("\t#                Cadastro de Estudantes                #\n");
            printf("\t#                                                      #\n");
            printf("\t########################################################\n\n\n");
            printf("\n Digite uma das opções\n\n");
            printf("\n <I> - Incluir");
            printf("\n <A> - Alterar");
            printf("\n <E> - Excluir");
            printf("\n <C> - Consultar");
            printf("\n <L> - Listar");
            printf("\n <S> - Sair");
            printf("\n\n\n opção:");
            gets(opcao);
            op=tolower(*opcao);
        }
        while(!strchr("iaecls",op));
        switch(op) /*D*/
        {
        case 'i' :
            incluir();
            break;
        case 'a' :
            alterar();
            break;
        case 'e' :
            excluir();
            break;
        case 'c' :
            printf("\nConsultar Dados");
            consultar();
            break;
        case 'l' :
            printf("\nListagem de Dados");
            listar();
            break;
        case 's' :
            exit(0);
        }
    }
    while(1);
}

void abrir(char tipo[3])
{
    if((fp=fopen("/home/alberto/arquivo.dat", tipo))==NULL) //para windows => c:\\diretorio\\arquivo.dat
    {
        printf("\n O arquivo nao pode ser aberto!!\n");
        exit(1);
    }
}
void incluir(void)
{
    //char *um="0";
    abrir("ab+");
    fseek(fp,0L, SEEK_END);

    do
    {
        printf("\n Digite o nome ou <FIM> para sair:\n\n");
        gets(reg.nome);

        if ((strcmp(reg.nome,"fim")!=0)&&(strcmp(reg.nome,"FIM")!=0))
        {
            printf("\n Matrícula:");
            gets(reg.matricula);
            printf("\n Cpf:");
            gets(reg.cpf);
            printf("\n Telefone:");
            gets(reg.telefone);
            printf("\n Rede Social:");
            gets(reg.redesocial);
            reg.status='1';
            if(fwrite(&reg, sizeof(struct registro), 1, fp) != 1)
            {
                printf("\n Erro de gravação!!");
            }
            else
            {
                printf("\n Gravação feita com sucesso...\n\n");
            }
        }
    }
    while((strcmp(reg.nome,"fim")!=0)&&(strcmp(reg.nome,"FIM")!=0));
    fclose(fp);
}

int busca (void)
{
    int achou=-1,posicao=0;
    char nomep[40];
    abrir("rb");
    printf("\nDigite o nome a ser procurado:");
    gets(nomep);
    rewind(fp);
    while((!feof(fp))&&(achou==-1))
    {
        fread(&reg, sizeof(struct registro), 1, fp);
        if (!feof(fp))
        {
            if (strcmp(nomep, reg.nome)==0)
            {
                if (reg.status=='0')
                {
                    posicao=-2;
                }
                achou=1;
            }
            else
            {
                posicao++;
            }
        }
        else
        {
            posicao=-1;
        }
    }
    if (achou==-1)
    {
        posicao=-1;
    }
    fclose(fp);
    return(posicao);
}

void consultar(void)
{
    int pos;
    pos=busca();
    if(pos==-1)
    {
        printf("\nEstudante inexistente no arquivo!");
        system("pause");
    }
    else if(pos==-2)
    {
        printf("\nEstudante inexistente no arquivo!");
        system("pause");
    }
    else
    {
        abrir("rb+");
        fseek(fp,pos*sizeof(struct registro),SEEK_SET);
        fread(&reg, sizeof(struct registro), 1, fp);
        printf("\nNome:%s",reg.nome);
        printf("\nMatricula:%s",reg.matricula);
        printf("\nCpf:%s",reg.cpf);
        printf("\nTelefone:%s",reg.telefone);
        printf("\Rede Social:%s",reg.redesocial);
    }
    fclose(fp);
}
void alterar(void)
{
    int pos;
    pos=busca();
    if (pos==-1)
    {
        printf("\Estudante inexistente no arquivo");

    }
    else if(pos==-2)
    {
        printf("\nEstudante inexistente no arquivo!");
    }
    else
    {
        abrir("rb+");
        fseek(fp,pos*sizeof(struct registro),SEEK_CUR);
        fread(&reg, sizeof(struct registro), 1, fp);
        printf("\nDeseja alterar o seguinte registro...");
        printf("\nCarro:%s",reg.nome);
        printf("\nMatricula:%s",reg.matricula);
        printf("\nCpf:%s",reg.cpf);
        printf("\nTelefone:%s",reg.telefone);
        printf("\nRede Social:%s",reg.redesocial);
        printf("\nDigite as informacoes corretas:");
        printf("\nNome:");
        gets(reg.nome);
        printf("\nMatricula:");
        gets(reg.matricula);
        printf("\nCpf:");
        gets(reg.cpf);
        printf("\nTelefone:");
        gets(reg.telefone);
        printf("\nRede Social:");
        gets(reg.redesocial);
        reg.status='1';
        fseek(fp,pos*sizeof(struct registro),SEEK_SET);
        if(fwrite(&reg, sizeof(struct registro),1, fp)!=1)
        {
            printf("\nErro na gravacao...");
        }
        else
        {
            printf("\nRegravacao feita com sucesso...");
        }
    }
    fclose(fp);
}
void listar(void)
{
    int cont=0;

    abrir("rb");
    fseek(fp, 0L, SEEK_SET);
    fread(&reg, sizeof(struct registro),1, fp);
    printf("\nListagem dos Acadêmicos - Discentes");
    do
    {
        if (reg.status!='0')
        {
            printf("\nNome: %s",reg.nome);
            printf("\nMatricula: %s",reg.matricula);
            printf("\nCpf: %s",reg.cpf);
            printf("\nTelefone: %s",reg.telefone);
            printf("\nRede Social: %s",reg.redesocial);
            cont++;
        }
        else
            printf("\nDados inexistentes");
        fread(&reg, sizeof(struct registro),1, fp);
    }
    while(!feof(fp));
    printf("\n#Número de Registros=%d",cont);
}
void excluir(void)
{
    int pos;
    pos=busca();
    if(pos==-1)
    {
        printf("\Estudante inexistente no arquivo");
    }
    else
    {
        if(pos==-2)
        {
            printf("\Estudante excluído do arquivo");
        }
        else
        {
            abrir("rb+");
            fseek(fp, pos*sizeof(struct registro), SEEK_SET);
            fread(&reg, sizeof(struct registro), 1, fp);
            printf("\nNome: %s",reg.nome);
            printf("\nMatricula: %s",reg.matricula);
            printf("\nCpf: %s",reg.cpf);
            printf("\nTelefone: %s",reg.telefone);
            printf("\nRede Social: %s",reg.redesocial);
            printf("\nEste Registro #%d sera excluído",(pos+1));
            //strcpy(reg.status,"0");
            reg.status='0';
            fseek(fp, pos*sizeof(struct registro), SEEK_SET);
            if(fwrite(&reg, sizeof(struct registro), 1, fp)!=1)
            {
                printf("\nErro na gravaçao...");
            }
            else
            {
                printf("\nExclusão feita com sucesso!");
            }
        }
    }
    fclose(fp);
}
