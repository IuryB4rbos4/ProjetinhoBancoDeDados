/*
(9º)    Crie um trigger para modificar o nome do dependente deixando a primeira letra no nome sempre maiúscula 
        quando esse dado for inserido ou atualizado.
*/
CREATE OR REPLACE TRIGGER TG_AFTER_DEPENDENTE_NOME_PRIMEIRA_LETRA
BEFORE INSERT OR UPDATE ON DEPENDENTE
REFERENCING
    NEW AS NOVO
FOR EACH ROW
BEGIN
    :NOVO.NOME := INITCAP(:NOVO.NOME);
END;