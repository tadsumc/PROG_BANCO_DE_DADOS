
DROP TABLE tbAulas;

CREATE TABLE "fabricante"
(
fab_cod SERIAL NOT NULL,
fab_nome CHARACTER VARYING (100),
CONSTRAINT pk_fabricante PRIMARY KEY (fab_cod)  
);

CREATE TABLE "cpu"
(
cpu_cod serial NOT NULL,
cpu_nome CHARACTER VARYING (100),
fab_cod INTEGER,
CONSTRAINT pk_cpu PRIMARY KEY (cpu_cod),
CONSTRAINT fk_fabricante FOREIGN KEY (fab_cod)
	REFERENCES fabricante (fab_cod) 
);

CREATE TABLE "modelo"
(
mod_cod serial NOT NULL,
mod_Nome CHARACTER VARYING (255),
cpu_cod INTEGER,
CONSTRAINT pk_modelo PRIMARY KEY (mod_cod),
CONSTRAINT fk_cpu FOREIGN KEY (cpu_cod) 
	REFERENCES cpu (cpu_cod) 
 );

 