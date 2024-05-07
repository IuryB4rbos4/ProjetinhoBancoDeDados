/*
Produto(idProduto, nome, categoria, preco, estoque)
Compra(idProduto, quantidade) Chave Estrangeira de Produto(idProduto)

Faça um trigger para quando houver uma atualização no estoque da tabela Produto, se o
novo valor de estoque for menor que 5, então insira na tabela compras o produto e a quantidade
igual a 50.
*/
CREATE OR REPLACE TRIGGER TG_PRODUTO_ESTOQUE_AFTER_UPDATE
AFTER UPDATE OF ESTOQUE ON PRODUTO
FOR EACH ROW
BEGIN
    IF (:new.ESTOQUE < 5) THEN
        INSERT INTO COMPRA(ID_PRODUTO, QUANTIDADE) VALUES (:old.ID_PRODUTO, 50);
        -- UPDATE COMPRA SET QUANTIDADE = 50
        -- WHERE ID_PRODUTO = :old.ID_PRODUTO;
    END IF;

END;