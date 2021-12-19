# mdbe
aim for database developer friendly tool.

created by golang.

## Installation

### Linux
```bash
$ curl -O https://github.com/matsuyoido/mdbe/raw/release/linux/mdbe
```

### Windows
```powershell
$ Invoke-WebRequest -Uri https://github.com/matsuyoido/mdbe/raw/release/windows/mdbe.exe
```

### Mac
```bash
$ curl -O https://github.com/matsuyoido/mdbe/raw/release/mac/mdbe
```



## Usage

### basic

```
$ mdbe
```

### yaml -> ddl

```
$ mdbe ddl

# if no ask execute
$ mdbe ddl -l ${yamlFilePath} -o ${outputDir}
```

### yaml -> Entity Relation Diagram

```
# Entity Relation Diagram by plantUML
$ mdbe puml

## if no ask execute
$ mdbe puml -l ${yamlFilePath} -o ${outputDir}

# tables doc by markdown
$ mdbe mdoc

## if no ask execute
$ mdbe mdoc -l ${yamlFilePath} -o ${outputDir}
```

### migration ddl

TODO develop...



## database yaml format

※ please <> have to be changed depending on your environment.

### minimum
```yaml
tables:
  <tableName1>:
    columns:
      <columnName1>:
        type: <column_definition>
      <columnName2>:
        type: <column_definition>
  <tableName2>:
    columns:
      <columnName1>:
        type: <column_definition>
```

### Primary Key
```yaml
tables:
  <tableName1>:
    columns:
      <columnName>:
        type: <column_definition>
      pk:
        name: <primary_name>
        columns:
          - <primary_column_name>
```

### Foreign Key
```yaml
tables:
  <tableName1>:
    columns:
      <columnName>:
        type: <column_definition>
  <tableName2>:
    columns:
      <columnName>:
        type: <column_definition>
<foreign_key_name>:
  relate:
    - <tableName1>.<columnName>
  to:
    - <tableName2>.<columnName>
```

### table definition
```yaml
tables:
  <tableName>:
    columns:
      <columnName>:
        type: <column_definition>
      pk:
        name: <primary_name>
        columns:
          - <primary_column_name>
      uq:
        <uniqueKeyName>:
          - <unique_column_name>
      idx:
        <indexKeyName>:
          - <index_column_name>
      check:
        <checkConstraintName>: <constraint>
      logicalName: <logicalName>
      comment: <table_comment>
```

### column definition
```yaml
tables:
  <tableName>:
    columns:
      <columnName>:
        type: <column_definition>
        notNull: <true or false, default: false>
        logicalName: <logicalName>
        info: <column_comment>
        defaultValueText: <case varchar text>
        defaultValue: <case other>
```


### aggregates the columns required for all tables into one location
```yaml
commons:
  <columnName>:
    type: <column_definition>
    notNull: <true or false, default: false>
    logicalName: <logicalName>
    info: <column_comment>
    defaultValueText: <case varchar text>
    defaultValue: <case other>
```

### aggregates column types into a single location
```yaml
domains:
  <column_type_name>: <column_definition>

commons:
  <columnName>:
      type: <settable domains in column_type_name>

tables:
  <tableName>:
    columns:
      <columnName>:
        type: <settable domains in column_type_name>
```

### full
```yaml
version: <opt. your version>

domains:
  <column_type_name>: <column_definition>

commons:
  <columnName>:
    type: <column_definition>
    notNull: <opt. true or false>
    logicalName: <opt.>
    info: <opt. column_comment>
    defaultValueText: <opt. case varchar text>
    defaultValue: <opt. case other>

tables:
  <tableName>:
    columns:
      <columnName>:
        type: <column_definition>
        notNull: <opt. true or false>
        logicalName: <opt.>
        info: <opt. column_comment>
        defaultValueText: <opt. case varchar text>
        defaultValue: <opt. case other>
      pk:
        name: <opt.primary_name>
        columns:
          - <opt. primary_column_name>
      uq:
        <opt. uniqueKeyName>
          - <unique_column_name>
      idx:
        <opt. indexKeyName>
          - <index_column_name>
      check:
        <opt. checkConstraintName>: <constraint>
      logicalName: <opt.>
      comment: <opt. table_comment>

<opt. foreign_key_name>:
  relate:
    - <parent_table_name>.<parent_colum_name>
  to:
    - <child_table_name>.<child_column_name>
```


## Bug or Request

please create `New Issue` in Japanese or English.
(Japanese is better...)

