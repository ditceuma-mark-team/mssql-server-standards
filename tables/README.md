### Criação de tabelas

No diretório deste arquivo existem exemplos de estruturas em SQL que você pode usar para a criação de suas tabelas.

Essas tabelas devem respeitar algumas especificações, sendo elas:

fórmula: `prefixo + numero sequencial + nome da tabela`.

1. Prefixo: Sigla do Banco de Dados

    O prefixo é `sigla do banco de dados`, ou seja, é a letra inicial de cada palavra que compõe o nome do banco.

    ex:
    
    ```
    DBMATRICULADIGITAL   -> prefixo: MD
    DBNOMEDOBANCODEDADOS -> prefixo: NBD
    ```

    OBS: as [preposições](https://www.infoescola.com/portugues/preposicao/) não devem compor a sigla do Banco de Dados, caso exista.

2. Número da tabela: numeração sequencial das tabelas, verifique antes o ultimo número do sequencial de tabelas.

3. Nome da tabela: nome propriamente dito da tabela, que designa sua função. Devem respeitar previamente os itens 1 e 2.

    ex:
    
    ```
    NDB01CADASTRODEALUNOS
    NDB02INFORMACOESDEALUNOS
    ```

#### Nomenclatura para criação de índices

[Verificar no arquivo do modelo as especificações](create_index_on_table.sql).

#### Criação de views

A criação de `views` no Banco de Dados deve respeitar a seguinte nomenclatura:

fórmula: `prefixo + vw + numero sequencial`.

**OBS: o `prefixo` e o `numero sequencial` seguem os mesmos padrões especificados nos itens 1 e 2 deste documento.**

- [A partir de uma tabela](create_views_for_table.sql)
- [A partir de uma query](create_views_from_query.sql)

#### Criação de Primarys Keys

Por padrão convencional, a primary key de uma tabela é simplesmente o campo `id` desta. Os novas tabelas devem simplesmente criar o primary key da tabela como `id` se o relacionamento não estiver complicadamente atrelado.

Porém para manter a compatibilidade com o antigo padrão estabelecido nas antigas estruturas, segue a forma para criação de primary keys:

fórmula: `prefixo + numero sequencial + nome do campo`

**Foreing Keys**

fórmula: `fk + numeroda tabela de origem + numero da tabela de destino + nome do campo de origem`
