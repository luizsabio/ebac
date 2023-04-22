#language: pt

Funcionalidade: Configurar produto na loja virtual EBAC
Como cliente da loja
Quero configurar meu produto de acordo com tamanho e gosto
e escolher a quantidade
Para depois inserir no carrinho

Cenário: Produto com estoque
Dado que eu acesse a página do produto
Quando eu escolher tamanho
E quantidade
Então deve-se salvar e permitir a configuração, além de adicionar o produto configurado/personalizado no carrinho de itens para comprá-lo.

Cenário: Produto sem estoque
Dado que eu acesse a página do produto
Quando eu escolher tamanho
E quantidade
Então deve-se mostrar uma mensagem de "Produto sem estoque" e não permitir a adição do produto no carrinho.

-----------------------------------------------------------------------------------------------------

Funcionalidade: Tela de login
Como aluno do portal da EBAC
Quero me autenticar
para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de autenticação da EBAC

Cenário: Autenticação válida
Quando eu digitar o usuário "joao@123.com"
E a senha "12345"
Então deve exibir uma mensagem de boas-vindas "Olá João, foi redirecionado para a página de checkout."

Cenário: Usuário inexistente
Quando eu digitar o usuário "joao123.com"
E a senha "12345"
Então deve exibir uma mensagem de alerta "Usuário inexistente, deseja efetuar cadastro?"

Cenário: Usuário com login inválido
Quando eu digitar o usuário "joao@123.com"
E a senha "123"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos, tente novamente."

-----------------------------------------------------------------------------------------------------

Funcionalidade: Tela de cadastro - checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:
Dado que eu acesse a tela de cadastro para o checkout do pedidos

Cenário: Cadastro válido
Quando eu digitar todos os dados pedidos, <email>, <nome>, <sobrenome>
E avançar na efetuação da compra
Então deve exibir uma <mensagem> de sucesso

Cenário: Dados faltando
Quando eu digitar os dados pedidos, <email>, <nome>, <sobrenome>
E avançar na efetuação da compra
Então deve exibir uma <mensagem> de dados não preenchidos

Cenário: Email formatado incorretamente.
Quando eu digitar os dados pedidos, <email>, <nome>, <sobrenome>
E avançar na efetuação da compra
Então deve exibir uma <mensagem> de email mal formatado

Cenário: Dados errados
Quando eu digitar os dados pedidos, <email>, <nome>, <sobrenome>
E avançar na efetuação da compra
Então deve exibir uma <mensagem> de dados errados

 Exemplos:
        
|email|nome|sobrenome|mensagem|
|"luiz@outlook.com"|"Luiz"|"Sábio"|"Cadastro realizado com sucesso, prosseguindo para efetuar pedido."|
|"luiz@outlook.com"|"Luiz"|"    "|"Dados não preenchidos corretamente, tente novamente."|
|"luizoutlook"|"Luiz"|"Sábio"|"Email formatado incorretamente, tente denovo."|
|"luiz@outlook.com"|"Luiz"|"123.456.789-10"|"Dados errados, tente novamente."| 

