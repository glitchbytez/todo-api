CREATE TABLE todos (
                       id          BIGSERIAL PRIMARY KEY,
                       title       VARCHAR(255) NOT NULL,
                       description TEXT,
                       status      VARCHAR(20)  NOT NULL DEFAULT 'PENDING',
                       priority    VARCHAR(10)  NOT NULL DEFAULT 'MEDIUM',
                       due_date    DATE,
                       created_at  TIMESTAMPTZ  NOT NULL DEFAULT now(),
                       updated_at  TIMESTAMPTZ  NOT NULL DEFAULT now()
);

CREATE INDEX idx_todos_status ON todos (status);
CREATE INDEX idx_todos_due_date ON todos (due_date);