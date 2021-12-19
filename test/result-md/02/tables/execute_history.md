
# execute_history


## Columns

| Name | Type | Nullable | Default | Parents | Children | Comment | Note |
| ---- | ---- | :------: | :-----: | ------- | -------- | ------- | ---- |
| test_id    | INT      | true  |  | [test.id](test.md) |  |  |  |
| execute_at | DATETIME | true  |  |  |  |  |  |


## Constraints

| Type | Name | Column/Constratints |
| ---- | ---- | ------------------- |
| UNIQUE KEY | execute_history_UQ01 | test_id, execute_at |
| CHECK      | execute_history_CHK_01 | execute_at < current_timestamp() |
