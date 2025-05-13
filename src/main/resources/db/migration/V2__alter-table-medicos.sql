ALTER TABLE consultas DROP CONSTRAINT fk_consultas_medico_id;

ALTER TABLE medicos ALTER COLUMN id SET NOT NULL;
ALTER TABLE medicos ALTER COLUMN id TYPE BIGINT;

ALTER TABLE consultas
ADD CONSTRAINT fk_consultas_medico_id
FOREIGN KEY (medico_id) REFERENCES medicos(id);
