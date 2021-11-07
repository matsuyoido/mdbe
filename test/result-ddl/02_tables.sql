CREATE TABLE test (
    id   INT AUTO_INCREMENT,
    name VARCHAR(50)       
);
ALTER TABLE test ADD CONSTRAINT test_PK PRIMARY KEY (id);
CREATE INDEX test_IDX01 ON test (name);
CREATE TABLE execute_history (
    test_id    INT     ,
    execute_at DATETIME
);
ALTER TABLE execute_history ADD CONSTRAINT execute_history_UQ01 UNIQUE (test_id, execute_at);
ALTER TABLE execute_history ADD CONSTRAINT execute_history_CHK_01 CHECK (execute_at < current_timestamp());
ALTER TABLE execute_history ADD CONSTRAINT execute_history_FK01 FOREIGN KEY (test_id) REFERENCES test(id);
