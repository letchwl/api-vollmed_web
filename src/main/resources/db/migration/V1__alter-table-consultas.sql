ALTER TABLE consultas
DROP COLUMN paciente_id;

ALTER TABLE consultas
ADD COLUMN paciente_id BIGINT NOT NULL,
ADD CONSTRAINT fk_consultas_paciente_id
FOREIGN KEY (paciente_id)
REFERENCES pacientes(id);
