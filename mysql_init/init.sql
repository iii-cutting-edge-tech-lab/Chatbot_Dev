create database chatbot_db;
use chatbot_db;

create table users (
    user_open_id varchar(255),
    user_nick_name varchar(255),
    user_status varchar(255),
    user_img varchar(255),
    user_register_date varchar(255),
    user_register_menu varchar(255),
    PRIMARY KEY (user_open_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table menus (
	menu_id varchar(255),
	menu_content longtext,
	PRIMARY KEY (menu_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table assoc_sa_questions (
	question_id INTEGER(255),
	question_content TEXT,
	answer1_content TEXT,
	answer2_content TEXT,
	answer3_content TEXT,
	answer4_content TEXT,
	true_answer VARCHAR(255),
	true_answer_decribe_content TEXT,
	external_link VARCHAR(255),
	PRIMARY KEY (question_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table assoc_dev_questions (
	question_id INTEGER(255),
	question_content TEXT,
	answer1_content TEXT,
	answer2_content TEXT,
	answer3_content TEXT,
	answer4_content TEXT,
	true_answer VARCHAR(255),
	true_answer_decribe_content TEXT,
	external_link VARCHAR(255),
	PRIMARY KEY (question_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table assoc_sys_questions (
	question_id INTEGER(255),
	question_content TEXT,
	answer1_content TEXT,
	answer2_content TEXT,
	answer3_content TEXT,
	answer4_content TEXT,
	true_answer VARCHAR(255),
	true_answer_decribe_content TEXT,
	external_link VARCHAR(255),
	PRIMARY KEY (question_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into assoc_sys_questions values (1,'Which is an operational process performed by AWS for data security?','AES-256 encryption of data stored on any shared storage device (User responsibility)','Decommissioning of storage devices using industry-standard practices','Background virus scans of EBS volumes and EBS snapshots (No virus scan is performed by AWS on User instances)','Replication of data across multiple AWS Regions (AWS does not replicate data across regions unless done by User)','B','hhhhhh','ghjkkl');

create user 'read_only_user'@'%' IDENTIFIED BY 'iii';
GRANT SELECT ON chatbot_db.users TO 'read_only_user'@'%' IDENTIFIED BY 'iii';
GRANT SELECT ON chatbot_db.menus TO 'read_only_user'@'%' IDENTIFIED BY 'iii';
GRANT SELECT ON chatbot_db.assoc_sa_questions TO 'read_only_user'@'%' IDENTIFIED BY 'iii';
GRANT SELECT ON chatbot_db.assoc_dev_questions TO 'read_only_user'@'%' IDENTIFIED BY 'iii';
GRANT SELECT ON chatbot_db.assoc_sys_questions TO 'read_only_user'@'%' IDENTIFIED BY 'iii';

