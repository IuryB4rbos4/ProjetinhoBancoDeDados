/*
Produto(idProduto, nome, categoria, preco, estoque)
Compra(idProduto, quantidade) Chave Estrangeira de Produto(idProduto)

Remova todos os produtos da categoria 'Limpeza' que nunca foram comprados(ou seja, não
tenha tupla relacionada na tabela Compra).
*/
DELETE FROM PRODUTO
WHERE CATEGORIA = 'Limpeza'
AND NOT EXISTS(
    SELECT 1
    FROM COMPRA
    WHERE PRODUTO.ID_PRODUTO = COMPRA.ID_PRODUTO
);
