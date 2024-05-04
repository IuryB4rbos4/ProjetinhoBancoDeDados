/*
(5º)    Crie uma visão que mostre os pacientes que possuem algum atendimento onde o médico requisitante
        responsável pelo atendimento mora na mesma cidade paciente Exiba o nome do paciente e a cidade.
*/
CREATE OR REPLACE VIEW QUESTAO_5 AS
SELECT DISTINCT p.NOME, p.END_CIDADE
FROM PACIENTE p, MEDICO_REQUISITANTE mr, ATENDIMENTO aten
WHERE p.END_CIDADE = mr.END_CIDADE AND
                    	aten.CPF_PACIENTE = P.CPF AND
                    	aten.CODIGO_MEDICO_REQUISITANTE = MR.CODIGO;