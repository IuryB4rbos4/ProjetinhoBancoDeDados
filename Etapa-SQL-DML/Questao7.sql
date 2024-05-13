/*
(7º) Liste o CPF e nome dos pacientes que possuem mais de 60 anos, moram em
Campina Grande e que não tenham contrato com o convênio cujo nome é “Top
exames”.
*/
SELECT p.CPF, p.NOME
FROM PACIENTE p JOIN PACIENTE_CONVENIO con ON p.CPF = con.CPF_PACIENTE
WHERE NOT EXISTS (
    SELECT * FROM PACIENTE, CONVENIO
    WHERE PACIENTE.END_CIDADE = 'Campina Grande' AND CONVENIO.NOME = 'Top exames'
)
AND TRUNC(MONTHS_BETWEEN(SYSDATE, p.DATA_NASCIMENTO) / 12) > 60