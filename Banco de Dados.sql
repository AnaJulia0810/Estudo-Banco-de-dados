CREATE DATABASE bd_escolinha;

USE bd_escolinha;

CREATE TABLE tb_aluno(
	cpf varchar(14) primary key,
    nome varchar(50) not null
    );
    
CREATE TABLE tb_telefone(
	cod_telefone int auto_increment primary key,
    telefone varchar(14) not null,
    cpf_aluno varchar(14) not null,
    constraint  fk_aluno_telefone foreign key (cpf_aluno) references tb_aluno(cpf)
    );
    
CREATE TABLE tb_professor(
	cpf VARCHAR(14) PRIMARY KEY, 
    nome VARCHAR(30),
    sobrenome VARCHAR(30));
    
CREATE TABLE tb_curso(
cod_curso INT primary key, 
curso VARCHAR (60),
periodo VARCHAR(25),
cpf_professor VARCHAR (40) NOT NULL,
CONSTRAINT fk_tb_professor_curso FOREIGN KEY(cpf_professor)
 REFERENCES tb_professor(cpf));
 
CREATE TABLE tb_matricula(
	cod_matricula INT AUTO_INCREMENT PRIMARY KEY,
    cod_curso INT,
    CONSTRAINT fk_tb_curso_matricula FOREIGN KEY(cod_curso)
    REFERENCES tb_curso(cod_curso),
    cpf_aluno VARCHAR (14) NOT NULL, 
    CONSTRAINT fk_tb_aluno_matricula FOREIGN KEY(cpf_aluno)
    REFERENCES tb_aluno(cpf),
    dt_matricula DATE,
    situacao VARCHAR(20)); 
    
SELECT * FROM tb_aluno;
SELECT * FROM tb_telefone;
SELECT * FROM tb_professor;
SELECT * FROM tb_curso;
SELECT * FROM tb_matricula;