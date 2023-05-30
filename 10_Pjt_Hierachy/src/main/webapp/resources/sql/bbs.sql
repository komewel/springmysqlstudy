-- TINYINT  : 1바이트(-128~127)
-- SMALLINT : 2바이트(-65,536 ~ 65,535)
-- INT 		: 4바이트(-2,147,000,000 ~ 2,147,000,000)

-- VARCHAR(0 ~ 65536)
-- LONGTEXT

-- 스키마 선택
USE gdj61;
-- 테이블 삭제
DROP TABLE IF EXISTS BBS;
-- 테이블 생성
CREATE TABLE BBS (
    BBS_NO 		INT NOT NULL AUTO_INCREMENT,
    WRITER VARCHAR(30) NOT NULL,
    TITLE  VARCHAR(1000) NOT NULL, /* 제목이 곧 내용 */
    IP     VARCHAR(30) NOT NULL,
    CREATED_AT DATETIME NOT NULL,
    STATE  TINYINT NOT NULL,           /* 정상:1, 삭제:0 */
    DEPTH  TINYINT NOT NULL,           /* 원글:0, 1차댓글:1, 2차댓글:2, ... */
    GROUP_NO INT NOT NULL,            /* 원글과 모든 댓글은 같은 GROUP_NO, 원글:BBS_NO, 댓글:원글의 BBS_NO */
    GROUP_ORDER SMALLINT NOT NULL,         /* 동일 그룹 내 표시 순서 */
    CONSTRAINT PK_BBS PRIMARY KEY(BBS_NO)
);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자1', '제목1', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자2', '제목2', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자3', '제목3', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자4', '제목4', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자5', '제목5', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자6', '제목6', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자7', '제목7', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자8', '제목8', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자9', '제목9', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자10', '제목10', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자11', '제목11', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자12', '제목12', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자13', '제목13', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자14', '제목14', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자15', '제목15', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자16', '제목16', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자17', '제목17', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자18', '제목18', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자19', '제목19', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자20', '제목20', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자21', '제목21', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자22', '제목22', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자23', '제목23', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자24', '제목24', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자25', '제목25', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자26', '제목26', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자27', '제목27', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자28', '제목28', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자29', '제목29', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자30', '제목30', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자31', '제목31', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자32', '제목32', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자33', '제목33', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자34', '제목34', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자35', '제목35', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자36', '제목36', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자37', '제목37', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자38', '제목38', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자39', '제목39', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자40', '제목40', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자41', '제목41', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자42', '제목42', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자43', '제목43', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자44', '제목44', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자45', '제목45', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자46', '제목46', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자47', '제목47', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자48', '제목48', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자49', '제목49', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자50', '제목50', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자51', '제목51', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자52', '제목52', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자53', '제목53', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자54', '제목54', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자55', '제목55', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자56', '제목56', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자57', '제목57', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자58', '제목58', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자59', '제목59', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자60', '제목60', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자61', '제목61', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자62', '제목62', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자63', '제목63', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자64', '제목64', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자65', '제목65', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자66', '제목66', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자67', '제목67', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자68', '제목68', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자69', '제목69', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자70', '제목70', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자71', '제목71', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자72', '제목72', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자73', '제목73', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자74', '제목74', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자75', '제목75', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자76', '제목76', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자77', '제목77', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자78', '제목78', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자79', '제목79', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자80', '제목80', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자81', '제목81', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자82', '제목82', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자83', '제목83', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자84', '제목84', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자85', '제목85', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자86', '제목86', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자87', '제목87', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자88', '제목88', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자89', '제목89', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자90', '제목90', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자91', '제목91', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자92', '제목92', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자93', '제목93', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자94', '제목94', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자95', '제목95', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자96', '제목96', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자97', '제목97', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자98', '제목98', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자99', '제목99', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자100', '제목100', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자101', '제목101', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자102', '제목102', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자103', '제목103', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자104', '제목104', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자105', '제목105', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자106', '제목106', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자107', '제목107', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자108', '제목108', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자109', '제목109', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자110', '제목110', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자111', '제목111', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자112', '제목112', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자113', '제목113', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자114', '제목114', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자115', '제목115', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자116', '제목116', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자117', '제목117', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자118', '제목118', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자119', '제목119', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자120', '제목120', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자121', '제목121', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자122', '제목122', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자123', '제목123', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자124', '제목124', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자125', '제목125', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자126', '제목126', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자127', '제목127', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자128', '제목128', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자129', '제목129', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자130', '제목130', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자131', '제목131', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자132', '제목132', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자133', '제목133', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자134', '제목134', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자135', '제목135', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자136', '제목136', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자137', '제목137', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자138', '제목138', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자139', '제목139', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자140', '제목140', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자141', '제목141', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자142', '제목142', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자143', '제목143', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자144', '제목144', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자145', '제목145', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자146', '제목146', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자147', '제목147', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자148', '제목148', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자149', '제목149', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자150', '제목150', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자151', '제목151', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자152', '제목152', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자153', '제목153', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자154', '제목154', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자155', '제목155', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자156', '제목156', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자157', '제목157', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자158', '제목158', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자159', '제목159', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자160', '제목160', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자161', '제목161', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자162', '제목162', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자163', '제목163', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자164', '제목164', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자165', '제목165', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자166', '제목166', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자167', '제목167', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자168', '제목168', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자169', '제목169', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자170', '제목170', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자171', '제목171', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자172', '제목172', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자173', '제목173', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자174', '제목174', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자175', '제목175', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자176', '제목176', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자177', '제목177', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자178', '제목178', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자179', '제목179', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자180', '제목180', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자181', '제목181', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자182', '제목182', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자183', '제목183', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자184', '제목184', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자185', '제목185', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자186', '제목186', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자187', '제목187', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자188', '제목188', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자189', '제목189', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자190', '제목190', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자191', '제목191', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자192', '제목192', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자193', '제목193', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자194', '제목194', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자195', '제목195', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자196', '제목196', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자197', '제목197', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자198', '제목198', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자199', '제목199', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);
INSERT INTO BBS(WRITER, TITLE, IP, CREATED_AT, STATE, DEPTH, GROUP_ORDER) VALUES( '작성자200', '제목200', '0:0:0:0:0:0:0:1', NOW(), 1, 0,  0);

COMMIT;