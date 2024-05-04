/*
(2º)    Implemente uma procedure chamada remove_paciente_convenio. Esta procedure recebe o cpf do 
        paciente e o codigo_ans do convênio e apaga do banco relação de entre o paciente e convênio fornecidos.
*/
CREATE OR REPLACE PROCEDURE remove_paciente_convenio(
	P_CPF_PACIENTE PACIENTE.CPF%TYPE,
	C_ANS_CONVENIO CONVENIO.CODIGO_ANS%TYPE
)
IS
BEGIN
	DELETE FROM PACIENTE_CONVENIO PC
	WHERE PC.CPF_PACIENTE = P_CPF_PACIENTE AND PC.CODIGO_ANS = C_ANS_CONVENIO;
   COMMIT;
END remove_paciente_convenio;