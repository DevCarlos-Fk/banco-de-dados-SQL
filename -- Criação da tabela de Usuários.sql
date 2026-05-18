-- Criação da tabela de Usuários
CREATE TABLE IF NOT EXISTS Usuario (
    id_usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    salario_mensal REAL
);

-- Criação da tabela de Gastos com relacionamento (Chave Estrangeira)
CREATE TABLE IF NOT EXISTS Gasto (
    id_gasto INTEGER PRIMARY KEY AUTOINCREMENT,
    valor REAL NOT NULL,
    descricao TEXT,
    data TEXT,
    id_usuario INTEGER,
    FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario) ON DELETE CASCADE
);