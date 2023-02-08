#language: pt

@test_form
Funcionalidade: Formulário de cadastro

    @test
    Cenário: Fazer cadastro
        Dado que cliente acessa formulário de cadastro
        Quando inserir os dados de cadastro
            E submeter o registro
        Então é realizado o registro do cliente