🚀 Insights de Usuários com SQL JOINs

Este projeto tem como objetivo estudar e demonstrar, de forma simples e prática, como consultas SQL utilizando JOINs podem ser aplicadas para analisar o comportamento de usuários dentro de um sistema.

O foco principal é entender padrões como:

usuários que acessam mas não compram

usuários que compram sem acessar

usuários sem atividade

usuários com comportamento completo

valores consumidos

relacionamento entre entidades

As consultas foram organizadas em arquivos separados para manter o repositório limpo, modular e fácil de navegar.

🎯 Objetivo do Projeto

O propósito deste repositório é:

treinar JOINs de forma clara e didática

mostrar situações reais que ocorrem em bancos de dados

fornecer exemplos simples para estudo, portfólio ou entrevistas

demonstrar como integrar informações entre diferentes tabelas

criar um conjunto de consultas reutilizáveis para análise de comportamento

Todas as queries utilizam estruturas básicas e fáceis de entender, com foco em clareza e prática imediata.

🗂 Estrutura do Repositório
/README.md
/queries/
    /basicas.sql
    /intermediarias.sql
    /comportamento.sql
/scripts/
    /criacao_tabelas.sql
    /inserts.sql
/datasets/
    /usuarios.csv
    /acessos.csv
    /compras.csv

📁 Explicação das pastas

queries/
Contém todas as consultas do projeto, separadas por tema ou nível de complexidade.

scripts/
Arquivos para criar tabelas e inserir dados de exemplo.

datasets/
Conjuntos de dados simples para testar as queries.

🗄 Tabelas Utilizadas

A base do projeto é formada por três tabelas simples e comuns:

usuarios(id, user_name)
acessos(id, user_id, type)
compras(id, user_id, price)


Essas tabelas permitem estudar relações de comportamento entre cadastro, acesso e compra.

📌 O que você encontra neste projeto

JOINs básicos e intermediários

comportamentos cruzados entre tabelas

consultas estruturadas e organizadas

exemplos práticos para estudo

cenários reais usados em empresas para análise de engajamento

🤝 Contribuições

Sugestões, melhorias e novas queries são bem-vindas.
