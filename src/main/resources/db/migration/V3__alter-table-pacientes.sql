ALTER TABLE consultas DROP CONSTRAINT fk_consultas_paciente_id;

ALTER TABLE pacientes ALTER COLUMN id SET NOT NULL;
ALTER TABLE pacientes ALTER COLUMN id TYPE BIGINT;

ALTER TABLE consultas
ADD CONSTRAINT fk_consultas_paciente_id
FOREIGN KEY (paciente_id) REFERENCES pacientes(id);
