/*
Produto(idProduto, nome, categoria, preco, estoque)
Compra(idProduto, quantidade) Chave Estrangeira de Produto(idProduto)

Crie uma visão que mostra a categoria e o total em dinheiro estocado por categoria, que
totaliza mais de R$3.000,00.
*/

CREATE OR REPLACE VIEW CATEGORIA AS
SELECT p.CATEGORIA, SUM(p.PRECO * p.ESTOQUE) AS TOTAL_ESTOQUE_CATEGORIA
FROM PRODUTO p
GROUP BY p.CATEGORIA
HAVING SUM(p.PRECO * p.ESTOQUE) > 3000.00;