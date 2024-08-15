
Feature: Compra do Filme

    Efetuar Compra do Filme Homem-Aranha

    Scenario: Verificar botão Finalizar Pedido
    Given Estou na Tela Inicial do Site  "WeMovies"
    When E Clico no botao "Adicionar ao Carrinho"
    And E Vou para a tela para a tela seguinte
    Then Então é exibido o botão "Finalizar Pedido"


    Scenario: Adicionar Filme ao Carrinho
    Given Estou na Tela Inicial do Site  "WeMovies"
    When E Clico no layout do Cesto de Compra
    And O Botão "Adicionar ao Carrinho" fica verde
    Then É exibido o numero 1 dentro no Botão


    Scenario: Adicionar mais um item ao Carrinho
    Given Estou na Tela Inicial do Site  "WeMovies"
    When E Clico no botao "Adicionar ao Carrinho"
    And E Vou para a tela para a tela seguinte
    Then Então é exibido o botão "Finalizar Pedido"
    And Clico no botão "+" para adicionar mais um item
    Then E exibido duas unidades e a soma dos valores no "Subtotal"

    Scenario: Excluir item do Carrinho
    Given Estou na Tela Inicial do Site  "WeMovies"
    When E Clico no botao "Adicionar ao Carrinho"
    And E Vou para a tela para a tela seguinte
    Then Então é exibido o botão "Finalizar Pedido"
    And Clico no botão "-" excluir o  item do Carrinho
    Then E exibido duas unidades e a soma dos valores no "Subtotal"

    Scenario: Excluir item do Carrinho com opção lixeira
    Given Estou na Tela Inicial do Site  "WeMovies"
    When E Clico no botao "Adicionar ao Carrinho"
    And E Vou para a tela para a tela seguinte
    And Então é exibido o botão "Finalizar Pedido"
    And Então clico no botão da lixeira ao lado direito.
    Then O Item do Carrinho é excluido

    Scenario: Efetuar a Compra
    Given Estou na Tela Inicial do Site  "WeMovies"
    When E Clico no botao "Adicionar ao Carrinho"
    And E Vou para a tela para a tela seguinte
    And Clico no botão "Finalizar Pedido"
    Then É Exibida a mensagem "Compra Realizada com Sucesso"
   
   Scenario: Tentar finalizar a compra após esvaziar o carrinho
    Given que estou na tela inicial do site "WeMovies"
    When clico no botão "Adicionar ao Carrinho" para adicionar um filme
    And vou para a tela de finalização de compra
    But clico no botão lixeira para esvaziar o carrinho
    Then a tela deve exibir a mensagem "Nenhum filme no Carrinho"
    And o botão "Finalizar Pedido" não deve estar acessível para clicar




