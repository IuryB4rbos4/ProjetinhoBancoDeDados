/*
Produto(idProduto, nome, categoria, preco, estoque)
Compra(idProduto, quantidade) Chave Estrangeira de Produto(idProduto)

Mostre os nomes e valor do estoque daqueles produtos que tiveram transações registradas
e Compra com quantidade maior que 10.
*/

SELECT p.NOME, p.PRECO
FROM PRODUTO p, COMPRA com
WHERE p.ID_PRODUTO = com.ID_PRODUTO AND com.QUANTIDADE > 10;

-- VALOR TOTAL DO ESTOQUE 

SELECT 
    p.NOME,
    SUM(p.PRECO * p.ESTOQUE) AS TOTAL_VALOR_ESTOQUE
FROM
    PRODUTO p
JOIN COMPRA com ON p.ID_PRODUTO = com.ID_PRODUTO
WHERE com.QUANTIDADE > 10
GROUP BY p.NOME
ORDER BY TOTAL_VALOR_ESTOQUE DESC;