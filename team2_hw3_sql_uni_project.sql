CREATE TABLE `courses`(
    `id` INT  NOT NULL ,
    `course_name` VARCHAR(255) NOT NULL
);

INSERT INTO `courses` VALUES (1,'COMPUTER SCIENCE');
INSERT INTO `courses` VALUES (2,'MEDICINE');
INSERT INTO `courses` VALUES (3,'LAW');


CREATE TABLE `lecturers`(
    `lecturer_id` INT NOT NULL,
    `lecturer_first_name` VARCHAR(255) NOT NULL,
    `lecturer_last_name` VARCHAR(255) NOT NULL,
    `gender` BINARY(16) NOT NULL,
    `e_mail` VARCHAR(255) NOT NULL,
    `lecturer_address` VARCHAR(255) NOT NULL,
    `lecturer_birthdate` DATETIME NOT NULL,
    `lecturer_address2` VARCHAR(255) NULL,
    `lecturer_apartment#` VARCHAR(255) NULL,
    `account#` VARCHAR(255) NOT NULL,
    `degree` INT NOT NULL,
    `subject` INT NOT NULL,
    `course` INT NOT NULL
);

INSERT INTO `lecturers` VALUES (1,'LIKA', 'SIKHARULIA', 'FEMALE', 'l.sikharulia@sweeft.ge','თბილისი, ვაჟა-ფშაველას  8', '1995-05-10',NULL, NULL, 'GE3010000','PROFESSOR', 1, 1);
INSERT INTO `lecturers` VALUES (2,'BEKA', 'KHABURDZANIA','MALE', 'b.khaburdzania@sweeft.ge','თბილისი, ყაზბეგის  9','1993-02-11','ჩიხი 3', 'ბინა 7', 'GE305600','ASSOCIATED PROFESSOR', 2,2);
INSERT INTO `lecturers` VALUES (3, 'NUGZAR','MCHEDLISHVILI','MALE', 'b.mchedlishvili@sweeft.ge','თბილისი, წერეთელის  10', '1999-11-10',NULL, NULL, 'GE301840','SENIOR ASSISTENT',3,3);



CREATE TABLE `degree`(
    `id` INT  NOT NULL ,
    `degree_name` VARCHAR(255) NOT NULL
);
INSERT INTO `degree` VALUES (1,'PROFFESSOR');
INSERT INTO `degree` VALUES (2,'ASSISTANT_PROFFESSOR');
INSERT INTO `degree` VALUES (3,'INVITED_PROFESSOR');



CREATE TABLE `gender`(
    `id` INT  NOT NULL ,
    `gender_name` VARCHAR(255) NOT NULL
);

INSERT INTO `gender` VALUES (1,'FEMALE');
INSERT INTO `gender` VALUES (2,'MALE');
INSERT INTO `gender` VALUES (3,'UNDEFINED');


CREATE TABLE `subjects`(
    `id` INT  NOT NULL ,
    `subject_name` VARCHAR(255) NOT NULL,
    `course` INT NOT NULL,
    `week_day` INT NOT NULL
);

INSERT INTO `subjects` VALUES (1,'GENETICS',2,1);
INSERT INTO `subjects` VALUES (2,'ANATOMY',2,3);
INSERT INTO `subjects` VALUES (3,'PHARMACY',2,5);
INSERT INTO `subjects` VALUES (4,'MATH',1,1);
INSERT INTO `subjects` VALUES (5,'STATISTICS',1,3);
INSERT INTO `subjects` VALUES (6,'CYBER_SECURITY',1,4);
INSERT INTO `subjects` VALUES (7,'INTERNATIONAL_LAW',3,2);
INSERT INTO `subjects` VALUES (8,'CRIMINAL_LAW',3,4);
INSERT INTO `subjects` VALUES (9,'CONTRACT_LAW',3,5);


CREATE TABLE `week_day`(
    `id` INT  NOT NULL ,
    `day` VARCHAR(255) NOT NULL
);

INSERT INTO `week_day` VALUES (1,'MONDAY');
INSERT INTO `week_day` VALUES (2,'TUESDAY');
INSERT INTO `week_day` VALUES (3,'WEDNESDAY');
INSERT INTO `week_day` VALUES (4,'THURSDAY');
INSERT INTO `week_day` VALUES (5,'FRIDAY');
INSERT INTO `week_day` VALUES (6,'SATURDAY');
INSERT INTO `week_day` VALUES (7,'SUNDAY');



CREATE TABLE `students`(
    `id` INT  NOT NULL ,
    `student_name` VARCHAR(255) NOT NULL,
    `student_last_name` VARCHAR(255) NOT NULL,
    `e_mail` VARCHAR(255) NOT NULL,
    `student_address` VARCHAR(255) NOT NULL,
    `student_birthdate` DATETIME NOT NULL,
    `gender` INT NOT NULL,
    `address2` VARCHAR(255) NULL,
    `apartment_#` VARCHAR(255) NULL,
    `subject` INT NOT NULL,
    `course` INT NOT NULL
);

INSERT INTO `students` VALUES (1,'MIKHEIL', 'TSAGARELI','URANUS777@GMAIL.COM','თბილისი, აღმაშენებლის გამზ. 1/3','1960-10-01', 'MALE',NULL, NULL,1,1);
INSERT INTO `students` VALUES (2,'SHALVA', 'RAMISHVILI','S.RAMISH9098089@MAIL.RU','თბილისი, აღმაშენებლის ხეივ. 16 კმ., სავაჭრო ცენტრი თბილისი მოლი','1970-05-07', 'MALE',NULL, NULL,1,2);
INSERT INTO `students` VALUES (3,'GOCHA', 'CHERTKOEVI','GOCHAAA@GMAIL.COM','თბილისი, ბაზალეთის ქ. 8','1976-05-07','MALE',NULL, NULL,2,3);
INSERT INTO `students` VALUES (4,'GIA', 'JAJANIDZE', 'JAJANA@MAIL.GE','თბილისი, გამრეკელის ქ. 16','1973-05-17','MALE',NULL, NULL,2,2);
INSERT INTO `students` VALUES (5,'GIORGI', 'NAZGAIDZE','PRIMEGIORGI@GMAIL.COM','თბილისი, გლდანი, IV მ/რ, კორპ. 102','1980-05-01','MALE',NULL, NULL,3,3);
INSERT INTO `students` VALUES (6,'SULKHAN', 'KVERNADZE','KVERNA1997@GMAIL.COM','თბილისი, გლდანი, VI მ/რ, კორპ. 22-23 მიმდ. ტერიტ.','1976-01-07','MALE',NULL, NULL,4,1);
INSERT INTO `students` VALUES (7,'VASKA', 'KUDUKHOVI','VASKUD@MAIL.RU', 'თბილისი, გორგასლის ქ. 41', '1977-10-10','MALE',NULL, NULL,4,5);
INSERT INTO `students` VALUES (8,'KESARIA', 'ABRAMIDZE','KESOBESO@GMAIL.COM', 'თბილისი, გოძიაშვილის ქ. 35','1980-05-02', '3',NULL,NULL,2,5);
INSERT INTO `students` VALUES (9,'KHATIA', 'TSERETELI','CRAZYKHATIA@GMAIL.COM','თბილისი, დიდი დიღომი, III მ/რ (ასასვლელ გზაზე)','1985-05-07','FEMALE',NULL, NULL,5,1);
INSERT INTO `students` VALUES (10,'ETER', 'KAKULIA','REALVANGA@GMAIL.COM','თბილისი, დიღმის მასივი, კვ. 3, კორპ. 1','1960-05-07', 'FEMALE',NULL, NULL,2,4);
INSERT INTO `students` VALUES (11,'GIVI', 'SIKHARULIDZE','GIVI6060@GMAIL.COM', 'თბილისი, დიღმის მასივი, კვ. 5, კორპ. 1ა', '1958-05-07','MALE',NULL, NULL,4,3);
INSERT INTO `students` VALUES (12,'SLOME', 'KAPANADZE','SALKAP@GMAIL.COM','თბილისი, დოლიძის ქ. 11', '1995-05-07','FEMALE','2 ჩიხი','ბინა 3',3,1);
INSERT INTO `students` VALUES (13,'BADRI', 'SHUBLADZE','BASHUBL@MAIL.RU','თბილისი, დუშეთის ქ. 30/10', '1960-05-07','MALE',NULL, NULL,1,5);
INSERT INTO `students` VALUES (14,'INGA', 'GRIGOLIA','INGAGRRRR@GMAIL.COM','თბილისი, ვაზისუბანი, II მ/რ, სუპერმარკეტი კარფური', '1970-05-07','FEMALE',NULL, NULL,5,1);
INSERT INTO `students` VALUES (15,'GRISHA', 'ONIANI','SOSODRAGONLORE@MAIL.RU','თბილისი, ვაჟა-ფშაველას გამზ., კვ. 7, კორპ. 5ა', '1950-05-07','MALE','5 ჩიხი','ბინა 2',4,4);



/*test*/

SELECT   students.id, subjects.subject_name, Students.student_name, Students.student_last_name,   students.gender, students.subject, students.course

FROM students
INNER JOIN subjects
ON students.subject = subjects.id

