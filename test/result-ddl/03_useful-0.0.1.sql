CREATE TABLE test (
    id         INT AUTO_INCREMENT,
    name       VARCHAR(50)       ,
    updated_at DATETIME           NOT NULL DEFAULT current_timestamp()
);
ALTER TABLE test ADD CONSTRAINT test_PK00 PRIMARY KEY (id);
CREATE TABLE execute_history (
    test_id    INT     ,
    execute_at DATETIME,
    updated_at DATETIME NOT NULL DEFAULT current_timestamp()
);
ALTER TABLE execute_history ADD CONSTRAINT execute_history_FK01 FOREIGN KEY (test_id) REFERENCES test(id);
