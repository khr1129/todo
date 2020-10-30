# 만약 todo 데이터베이스가 존재하다면 삭제
DROP DATABASE IF EXISTS todo;
# todo 데이터베이스 생성
CREATE DATABASE todo;


# todo 데이터베이스 사용
USE todo;

# article 테이블 생성 
CREATE TABLE article (
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    word TEXT(300) NOT NULL,
    mean LONG NOT NULL
);

# `member` 테이블 생성
CREATE TABLE `member` (
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    loginId CHAR(100) NOT NULL,
    loginPw CHAR(200) NOT NULL,
    `name` CHAR(100) NOT NULL,
    nickname CHAR(100) NOT NULL,
    email CHAR(100) NOT NULL
);

SELECT *
FROM `member`;

SELECT * 
FROM article;

USE todo;
