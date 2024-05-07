/*
Produto(idProduto, nome, categoria, preco, estoque)
Compra(idProduto, quantidade) Chave Estrangeira de Produto(idProduto)

Remova da tabela Compras todos os produtos da categoria ‘Limpeza’ que têm quantidade menor
do que 10.
*/
DELETE FROM COMPRA com
WHERE com.QUANTIDADE < 10
AND EXISTS(
    SELECT 1
    FROM PRODUTO p
    WHERE p.ID_PRODUTO = com.ID_PRODUTO
);