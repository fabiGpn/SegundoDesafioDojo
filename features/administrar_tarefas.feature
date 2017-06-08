#language: pt
#utf-8
Funcionalidade: Administrar tarefas

Eu como usuário final
Quero cadastrar, editar e deletar minhas tarefas.

Contexto: 
	Dado que eu esteja no site suiteondemand
	E eu efetuo login com usuario 'will' e senha 'will'
	Então entro na página de criação de tarefas
@daily
Esquema do Cenario: Registrar Tarefa
	E cadastrado a tarefa com a tarefa "<Subject>"
	Entao o cadastro sera efetuado 

	Exemplos:
	| Subject            | 
	| Criar automação    | 
@daily
Esquema do Cenario: Editar tarefas
	Quando entro na página de editar tarefas 
	E edito a tarefa com os parametros "<dataInicio>" e "<dataFim>"
	Então minha tarefa tem que aparecer com os novos parãmetros

	Exemplos:
	| dataInicio       | dataFim          |  
	| 03/06/2017       | 05/06/2017       |
@important
Cenario: Deletar tarefa
	Quando entro na página de editar tarefas 
	E clico para excluir minha tarefa
	Então minha tarefa não deve mais existir