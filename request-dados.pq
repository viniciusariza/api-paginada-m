//Função que recebe um número de página e retorna os resultados da tabela para a página especificada.
let
    getData =
        (page) =>
            //Request de retorno Json.
            let
                request =
                    Json.Document(
                        //Link principal (padrão) da API.
                        Web.Contents(
                            ("https://api.link/"),
                            [
                                //Autenticação da API, no exemplo abaixo a autenticação é feita sem token, com email e senha no header.
                                Headers = [
                                    #"Content-Type" = "application/json",
                                    email = "email@email.com",
                                    password = "senha"
                                ],
                                //Rota da API. O parâmetro "page" especifica a página de entrada da função, se não colocar este parâmtro a API retornárá apenas a primeira page.
                                RelativePath =
                                    "/rotaendpoint?page="
                                    & Number.ToText(page)
                            ]
                        )
                    ),
                //Trás os resultados para a variável.
                data = request[data],
                items = data[items],
                //Converte em tabela.
                #"Convertido para Tabela" =
                    Table.FromList(
                        items,
                        Splitter.SplitByNothing(),
                        null,
                        null,
                        ExtraValues.Error
                    )
            //Após essa etapa, expandir para mostrar todas as colunas no Power Query.
            in
                #"Convertido para Tabela"
in
    getData