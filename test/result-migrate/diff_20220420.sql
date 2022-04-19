DROP TABLE project;
ALTER TABLE test ADD COLUMN updated_at DATETIME NOT NULL DEFAULT current_timestamp() AFTER name;
ALTER TABLE execute_history ADD COLUMN updated_at DATETIME NOT NULL DEFAULT current_timestamp() AFTER execute_at;
ALTER TABLE test ADD CONSTRAINT test_PK00 PRIMARY KEY (id);
ALTER TABLE execute_history ADD CONSTRAINT execute_history_FK01 FOREIGN KEY (test_id) REFERENCES test(id);
