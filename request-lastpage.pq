let
    //Request de retorno Json.
    paginacao =
        Json.Document(
            //Link principal (padrão) da API.
            Web.Contents(
                ("https://api-link/"),
                [
                    //Autenticação no header (sem token) com email e senha de ADM.
                    Headers = [
                        #"Content-Type" = "application/json",
                        email = "email@email.com",
                        password = "senha"
                    ],
                    //Rota da API.
                    RelativePath = "/rotaendpoint"
                ]
            )
        ),
    //Trás os resultados para a variavel.
    data = paginacao[data],
    //Pega número da última página da consulta feita, neste caso o atributo tem como nome "lastPage"
    lastPage1 = data[lastPage]
in
    //Cria uma lista de número iniciando em 1 até o número da última página da consulta feita
    List.Numbers(1, lastPage1)