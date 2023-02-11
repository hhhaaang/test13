DROP DATABASE IF EXISTS freshertrainingmanagement;

CREATE DATABASE IF NOT EXISTS freshertrainingmanagement;

USE freshertrainingmanagement;

-- tạo bảng --
CREATE TABLE trainee( 
  trainee_id INT PRIMARY KEY AUTO_INCREMENT,
  full_name VARCHAR(100) NOT NULL,
  birth_date DATE NOT NULL,
  gender ENUM('male', 'female', 'unknown'),
  et_iq TINYINT CHECK (et_iq > 0 AND et_iq <= 20),
  et_gmat TINYINT CHECK (et_gmat >= 0 AND et_iq <= 20),
  et_english TINYINT CHECK (et_english >= 0 AND et_english <= 50),
  training_class VARCHAR(50) NOT NULL,
  evaluation_notes VARCHAR(100)
  );
  alter table trainee
  add VTI_account VARCHAR(50) NOT NULL UNIQUE