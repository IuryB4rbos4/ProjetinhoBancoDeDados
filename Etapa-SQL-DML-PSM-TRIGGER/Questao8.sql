/*
(8º)    Crie um trigger que impeça a inserção de exame que tenha o atributo resultado como vazio ou nulo.
*/

CREATE OR REPLACE TRIGGER TG_INSERT_EXAME_ATRIBUTO_NULL_OR_INVALIDO_BEFORE
BEFORE INSERT ON EXAME_REQUERIDO_ATENDIMENTO
REFERENCING
    NEW AS NOVO
FOR EACH ROW
BEGIN
    IF (:NOVO.RESULTADO IS NULL OR :NOVO.RESULTADO = '') THEN 
        RAISE_APPLICATION_ERROR(-20001, 'Não pode inserir na tabela EXAME_REQUERIDO_ATENDIMENTO com o valor do atributo RESULTADO como null ou vazio.');
    END IF;
END;
