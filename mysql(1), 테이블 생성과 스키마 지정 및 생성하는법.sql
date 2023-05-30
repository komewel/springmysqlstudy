-- 사용할 스키마 지정하기
USE gdj61;

-- 테이블 삭제(MYSQL 버전, IF EXISTS (있으면 지우세요))
DROP TABLE IF EXISTS SAMPLE; 

-- 테이블 생성
CREATE TABLE SAMPLE (
	SAMPLE_NO 	INT 		NOT NULL AUTO_INCREMENT, -- AUTO INCREAMENT 를 사용하려면 PK를 주어야 하는데 PK권한이 테이블생성쿼리에 내장되는 방식으로 해야 오류가 안난다.
    SAMPLE_TEXT VARCHAR(20),
    SAMPLE_DT  	DATETIME,
    CONSTRAINT PK_SAMPLE PRIMARY KEY(SAMPLE_NO) -- AUTO_INCREMENT를 사용하는 경우에는 기본키 지정과 테이블 생성을 함께 해야 한다.
);
        
-- 전체 실행 : 전체 선택(CTRL + A) 후 전체 실행(CTRL + SHIFT + ENTER)
-- 개별 실행 : 개별 쿼리문 선택 후 실행(CTRL + ENTER)         
        