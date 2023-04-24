
-- 테이블(Entity) 생성
-- 성적정보 저장 테이블

CREATE TABLE tbl_score(
	name VARCHAR2(4) NOT NULL,
	kor NUMBER(3) NOT NULL CHECK(kor > 0 AND kor <= 100),
	eng NUMBER(3) NOT NULL CHECK(eng > 0 AND eng <= 100),
	math NUMBER(3) NOT NULL CHECK(math > 0 AND math <= 100),
	total NUMBER(3) NULL,
	average NUMBER(5, 2),
	grade CHAR(1),
	stu_num NUMBER(6), 
	
	-- PK(Primary Key) 거는법
	CONSTRAINT pk_stu_num
	PRIMARY KEY (stu_num)
);

   -- 테이블 생성 후 PK 적용하기
ALTER TABLE TBL_SCORE
ADD CONSTRAINT 

-- 컬럼 추가하기
ALTER TABLE 
	TBL_SCORE
ADD (sci NUMBER(3) NOT NULL);

-- 컬럼 삭제하기
ALTER TABLE
	TBL_SCORE 
DROP COLUMN sci;

-- 테이블 복사(tb_emp)
-- CTAS
CREATE TABLE tb_emp_copy
AS SELECT * FROM tb_emp;

-- 복사 테이블 조회
SELECT * FROM tb_emp_copy;
SELECT *FROM TB_EMP;

-- drop table (회사에서는 하면 안됨! 한번 지워지면 복구xxx)
DROP TABLE TB_EMP_COPY;

-- TRUNCATE table
-- 구조는 냅두곡 내부 데이터만 전체 삭제(이것도 복구 안됨)
TRUNCATE TABLE tb_emp_copy;

-- 예시테이블
CREATE TABLE goods (
	id number(6) PRIMARY KEY,
	g_name varchar(10) NOT NULL,
	price number(10) DEFAULT 1000,
	reg_DATE date
);

SELECT * FROM goods; 

--INSERT 
INSERT INTO goods
 	(id, g_name, price, reg_date)
 VALUES 
	(1, '선풍기', '120000', sysdate);

INSERT INTO goods
 	(id, g_name, reg_date)
 VALUES 
	(2, '달고나', sysdate);
	
INSERT INTO goods
 	(id, g_name, price)
 VALUES 
	(3, '풍선껌', 500);
	
-- 컬럼명 생략 시 모든 컬럼에 대해 순서대로 넣어야 함(사용 지양!!)
INSERT INTO goods
 VALUES 
	(4, '테이프', 10000, sysdate);
	
INSERT INTO goods
 	(id, g_name, price)
 VALUES 
	(5, '후리1', 500),
	(6, '후리2', 1500),
	(7, '후리3', 2500);
	

-- 수정 UPDATE 
UPDATE goods
SET g_name = '쫀디기'
WHERE id = 3
;

SELECT * FROM goods;

UPDATE goods
SET g_name = '음료슈', price = 2000
WHERE id = 2
;

UPDATE goods
SET price = 9999
;

-- 벌크업데이트(한번에 조건절 없으면 모두 적용시켜서 업데이트)
UPDATE tbl_user
SET age = age + 1
;

-- 행을 삭제 DELETE 
DELETE FROM goods
WHERE id = 3
;

-- 모든 행 삭제 
DELETE FROM goods;

-- SELECT 조회 (select all(= *) 이 기본값)
SELECT
	CERTI_CD
	, CERTI_NM 
	, ISSUE_INSTI_NM 
FROM TB_CERTI
;

-- 모든 컬럼 조회(실무측면에서 사용지양!!)
SELECT
	*
FROM TB_CERTI
;

-- 중복제거 조회 distinct
SELECT DISTINCT 
	ISSUE_INSTI_NM 
FROM TB_CERTI
;


SELECT
	CERTI_CD
	, CERTI_NM 
	, ISSUE_INSTI_NM 
FROM TB_CERTI
;

-- 열의 별칭 부여(alias)
SELECT
	EMP_NM 사원이름
	, ADDR 사원거주지
FROM TB_EMP
;

SELECT
	te.EMP_NM 사원이름
	, te.ADDR 사원거주지
FROM TB_EMP te
;


-- 문자열 연결하기
SELECT 
	CERTI_NM || '(' || ISSUE_INSTI_NM || ')' "자격증 정보"
FROM TB_CERTI
;


SELECT * FROM goods;
