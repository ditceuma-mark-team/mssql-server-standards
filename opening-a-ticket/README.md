# Abrindo um chamado

Os atendimentos para o time de Banco de Dados é realizado por email. Seja para chamados ou para acompanhamentos de projetos e seus registros.

Por isso este documento tem como objetivo criar um "esqueleto" padrão que deve ser seguido para o acompanhamento e fácil rastreamento dos chamados abertos, fechados em demais status.

---

## Modelo de solicitação

Para abrir uma solicitação use o seguinte modelo.

### Assunto do email

```Chamado DB - [título do problema/solicitação]```

### Corpo do email

## Contexto

```
Faça aqui, uma breve descrição do problema.

ex: Precisaremos de acesso para realizar uma carga completar (dados do ENADE) no CORPORERM, no servidor CL2DB, obtendo dados através de linked server da Base BDSPFP,  servidor CL3DB.
```

## Solicitação

```
Descreva aqui, a solicitação com detalhes.

ex: verificar ou analisar problema para correção.
ex: criar linked server para ralizar a migração.

```

## Origem -> Destino | Contextos de aplicação

```
Descreva a origem e o destino das solicitações de migração, criação de tabelas, campos e etc... Descreva também o contextos de aplicação.

ex: adicionar campos x, y, z em todos os servidores de produção.

ex: linked server do CL2DB para o CL3DB
```

## Scripts

```
Caso existam scrips para serem aplicados, enviar neste tópico.
```
