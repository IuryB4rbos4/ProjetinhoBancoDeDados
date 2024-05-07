/*
Produto(idProduto, nome, categoria, preco, estoque)
Compra(idProduto, quantidade) Chave Estrangeira de Produto(idProduto)

Mostre os nomes e valor do estoque daqueles produtos que tiveram transações registradas
e Compra com quantidade maior que 10.
*/

SELECT p.NOME, p.PRECO
FROM PRODUTO p, COMPRA com
WHERE p.ID_PRODUTO = com.ID_PRODUTO AND com.QUANTIDADE > 10;