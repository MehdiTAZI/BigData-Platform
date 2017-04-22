USE samples_database;
DROP TABLE samples_dataset;
CREATE TABLE samples_dataset(
   operation_name VARCHAR(60) NOT NULL,
   owner VARCHAR(30),
   operation_type VARCHAR(2),
   first_operand INT NOT NULL,
   second_operand INT NOT NULL,
   result INT NOT NULL,
   PRIMARY KEY(operation_name)
);

INSERT INTO samples_dataset(operation_name,owner,operation_type,first_operand,second_operand,result)
VALUES ('OP01','MEHDI','+',10,15,25);

INSERT INTO samples_dataset(operation_name,owner,operation_type,first_operand,second_operand,result)
VALUES ('OP02','MEHDI','+',12,15,27);

INSERT INTO samples_dataset(operation_name,owner,operation_type,first_operand,second_operand,result)
VALUES ('OP03','MEHDI','+',13,45,58);

INSERT INTO samples_dataset(operation_name,owner,operation_type,first_operand,second_operand,result)
VALUES ('OP04','MEHDI','+',30,15,45);

INSERT INTO samples_dataset(operation_name,owner,operation_type,first_operand,second_operand,result)
VALUES ('OP05','MEHDI','+',102,150,252);

INSERT INTO samples_dataset(operation_name,owner,operation_type,first_operand,second_operand,result)
VALUES ('OP06','MEHDI','+',110,152,262);