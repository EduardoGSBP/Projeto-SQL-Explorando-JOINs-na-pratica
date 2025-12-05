-- 1) Usuários que acessaram mas não compraram
SELECT
    T1.user_id,
    T1.user_name
FROM acessos AS T1
LEFT JOIN compras AS T2 ON T1.user_id = T2.user_id
WHERE T2.user_id IS NULL;
Explicação:
Traz todos os usuários que estão na tabela de acessos, mas não aparecem na tabela de compras.
O LEFT JOIN garante que o acesso apareça mesmo sem compra; o IS NULL filtra quem realmente não comprou.

sql
Copiar código
-- 2) Usuários que compraram mas nunca acessaram
SELECT
    T1.user_id,
    T1.price
FROM compras AS T1
LEFT JOIN acessos AS T2 ON T1.user_id = T2.user_id
WHERE T2.user_id IS NULL;
Explicação:
Lista compras que não possuem acessos correspondentes.
Útil para achar inconsistências ou usuários que compram sem usar a plataforma.

sql
Copiar código
-- 3) Todos os acessos com suas compras (quando houver)
SELECT
    T1.user_id,
    T1.user_name,
    T2.price
FROM acessos AS T1
LEFT JOIN compras AS T2 ON T1.user_id = T2.user_id;
Explicação:
Mostra todos os acessos e adiciona dados de compra quando existir.
Se o usuário não comprou, o campo price aparece como NULL.

sql
Copiar código
-- 4) Apenas usuários que acessaram E compraram (INNER JOIN)
SELECT
    T1.user_id,
    T1.user_name,
    T2.price
FROM acessos AS T1
INNER JOIN compras AS T2 ON T1.user_id = T2.user_id;
Explicação:
O INNER JOIN retorna somente quem aparece nas duas tabelas.
Ótimo para ver apenas usuários completos: acesso + compra.

sql
Copiar código
-- 5) Todos os usuários, acessaram ou compraram (FULL JOIN - se seu banco suportar)
SELECT
    COALESCE(T1.user_id, T2.user_id) AS user_id,
    T1.user_name,
    T2.price
FROM acessos AS T1
FULL OUTER JOIN compras AS T2 ON T1.user_id = T2.user_id;
Explicação:
Mostra:

usuários que só acessaram

usuários que só compraram

usuários que fizeram os dois

COALESCE combina os IDs para exibir um só.
Obs: FULL JOIN funciona no PostgreSQL. Se precisar para MySQL, eu adapto.

sql
Copiar código
-- 6) Contar quantos acessos cada usuário fez
SELECT
    T1.user_id,
    T1.user_name,
    COUNT(*) AS total_acessos
FROM acessos AS T1
GROUP BY T1.user_id, T1.user_name;
Explicação:
Mostra quantos acessos cada usuário teve.
Não é avançada — apenas um GROUP BY básico, comum em análises simples.

sql
Copiar código
-- 7) Usuários que acessaram e o valor total que gastaram
SELECT
    T1.user_id,
    T1.user_name,
    SUM(T2.price) AS total_gasto
FROM acessos AS T1
LEFT JOIN compras AS T2 ON T1.user_id = T2.user_id
GROUP BY T1.user_id, T1.user_name;
Explicação:
Combina acessos com compras e soma o valor gasto.
Se não comprou, o total será NULL (ou 0 se quiser que eu adapte).
