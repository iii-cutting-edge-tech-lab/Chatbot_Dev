create database chatbot_db;
use chatbot_db;

CREATE TABLE users (
    user_open_id varchar(255),
    user_nickname varchar(255),
    user_status varchar(255),
    user_img varchar(255),
    user_register_date timestamp(6),
    user_register_menu varchar(255),
    PRIMARY KEY (user_open_id)
);

create table menus (
	menu_id varchar(255),
	menu_content longtext,
	PRIMARY KEY (menu_id)
);

create table assoc_sa_db_questions (
	question_id INTEGER(255),
	question_content TEXT,
	answer1_content TEXT,
	answer2_content TEXT,
	answer3_content TEXT,
	answer4_content TEXT,
	true_answer INTEGER(255),
	true_answer_decribe_content TEXT,
	external_link VARCHAR(255),
	PRIMARY KEY (question_id)
);

create table assoc_dev_questions (
	question_id INTEGER(255),
	question_content TEXT,
	answer1_content TEXT,
	answer2_content TEXT,
	answer3_content TEXT,
	answer4_content TEXT,
	true_answer INTEGER(255),
	true_answer_decribe_content TEXT,
	external_link VARCHAR(255),
	PRIMARY KEY (question_id)
);

create table assoc_sys_questions (
	question_id INTEGER(255),
	question_content TEXT,
	answer1_content TEXT,
	answer2_content TEXT,
	answer3_content TEXT,
	answer4_content TEXT,
	true_answer INTEGER(255),
	true_answer_decribe_content TEXT,
	external_link VARCHAR(255),
	PRIMARY KEY (question_id)
);

insert into assoc_sys_questions values (1,'Which is an operational process performed by AWS for data security?','AES-256 encryption of data stored on any shared storage device (User responsibility)','Decommissioning of storage devices using industry-standard practices','Background virus scans of EBS volumes and EBS snapshots (No virus scan is performed by AWS on User instances)','Replication of data across multiple AWS Regions (AWS does not replicate data across regions unless done by User)',2,'hhhhhh','ghjkkl');


