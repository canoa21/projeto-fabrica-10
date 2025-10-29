CREATE TABLE professores(
    id int not null primary key autoincrement,
    nome text,
    email text,
    telefone text 
):

CREATE TABLE disciplinas(
    id int not null primary key autoincrement,
    nome text,
    carga_horaria int
):

CREATE TABLE turma(
    id int not null primary key autoincrement,
    nome text,
    ano_letivo int,
    turno text
):

CREATE TABLE alunos(
    id int not null primary key autoincrement
    nome text,
    data_asciment text,
    email text,
    turma_id int,
    foreign key  (turma_id) references turmas(id)

):

CREATE TABLE aulas(
    id int not null primary key autoincrement,
    dia_semana int,
    inicio text,
    fim text,
    sala text,
    turma_id int,
    foreign key (turma_id) referene turmas(id)
    disciplinas_id int,
    foreign key (disciplinas_id) references disciplinas(id)
    professores_id int,
    foreign key  (professores_id) references professores(id)
):
