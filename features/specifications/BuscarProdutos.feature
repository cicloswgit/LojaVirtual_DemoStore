# language: pt
# encoding: utf-8
Funcionalidade: Buscar Produtos
	A medida que eu acesso o site Demo Store
	Como cliente consumidor
	Eu desejo visualizar os produtos que procuro
	
Cenario: Buscar Produtos
	Dado que eu acesso o site Demo Store
	E informo a busca "Batman"	
	Quando eu clico na acao Pesquisar
	E seleciono o produto desejado para Adicionar ao Carrinho
	Entao eu visualizo o resumo das compras
	Dado informo a busca "PS3"
	Quando eu clico na acao Pesquisar
	E seleciono o produto desejado para Adicionar ao Carrinho
	Entao eu visualizo o resumo das compras
	Dado eu clico na acao Carrinho > Ver Carrinho
	Entao sou direcionado para o carrinho de compras
	E visualizo os produtos selecionados na lista de compras
	E visualizo o total de 79.98
	
Esquema do Cenario: Buscar Produto Unitario
	Dado que eu acesso o site Demo Store
	E informo a busca "<produto>"	
	Quando eu clico na acao Pesquisar
	E seleciono o produto desejado para Adicionar ao Carrinho
	Entao eu visualizo o resumo das compras
	Dado eu clico na acao Carrinho > Ver Carrinho
	Entao sou direcionado para o carrinho de compras
	E visualizo os produtos selecionados na lista de compras
	E visualizo o total de <valor>
	Exemplos:
	| 	produto 	| 	valor		|
	|   Batman		|	59.99		|
	|	PS3			|	19.99		|
	| 	smartphone	| 	524.99		|
	| 	smart tv	|	5,399.99	|