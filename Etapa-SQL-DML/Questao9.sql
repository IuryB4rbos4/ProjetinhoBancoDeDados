/*
(9º) Quais médicos elaboradores nunca realizaram o exame cujo nome é “hemograma”,
projete o nome e a especialidade.
*/
SELECT me.nome, me.especialidade
FROM MEDICO_ELABORADOR me
WHERE NOT EXISTS (SELECT *
                	FROM EXAME e, EXAME_REQUERIDO_ATENDIMENTO era
                	WHERE e.codigo = era.codigo_exame and e.nome_exame = 'hemograma' and me.codigo = e.codigo_medico_elaborador);