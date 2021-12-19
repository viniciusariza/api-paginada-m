<div align="center">
  <h1>Consumo de API paginada em linguagem M</h1>
</div>

### Sobre
O script cria uma rotina de consumo de dados de APIs paginadas através da **linguagem M**, permitindo agendar um fluxo de consumo, tratamento e atualização dentro do **Power Query**, para soluções que dispensam o uso de uma staging.
  
### Tecnologia
Linguagem **M**.

### Para utilizar
- Acessar o Power Query, criar consulta nula e criar script no editor avançado para gerar uma coluna com os números de páginas, iniciando em 1 até a última página disponível. Um exemplo é disponibilizado no arquivo comentado <a href="https://github.com/viniciusariza/api-paginada-m/blob/main/request-lastpage.pq">request-lastpage.pq</a>.

- Invocar na mesma consulta a função que recebe como parâmetro o número de página atual e retorna os dados da API. O script é disponibilizado no arquivo comentado <a href="https://github.com/viniciusariza/api-paginada-m/blob/main/request-dados.pq">request-dados.pq</a>.
