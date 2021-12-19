
# test


## Columns

| Name | Type | Nullable | Default | Parents | Children | Comment | Note |
| ---- | ---- | :------: | :-----: | ------- | -------- | ------- | ---- |
| id         | INT AUTO_INCREMENT | true  |  |  | [execute_history.test_id](execute_history.md) |  |  |
| name       | VARCHAR(50)        | true  |  |  |  |  |  |
| updated_at | DATETIME           | false | current_timestamp() |  |  |  |  |


## Constraints

| Type | Name | Column/Constratints |
| ---- | ---- | ------------------- |
| PRIMARY KEY | test_PK00 | id |
