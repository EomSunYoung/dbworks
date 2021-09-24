-- 부서 추가 --
INSERT INTO department VALUES (10, '관리팀', '서울');
INSERT INTO department VALUES (20, '전산팀', '인천');


-- 부서 테이블 --
CREATE TABLE department(
	deptid   INTEGER,
	deptname TEXT NOT NULL,
	location TEXT NOT NULL,
	PRIMARY KEY(deptid)
);

CREATE TABLE employee(
	empid  INTEGER,
	name   TEXT NOT NULL,
	age	  INTEGER,
	deptid INTEGER,
	PRIMARY KEY(empid),
	PRIMARY KEY(deptid) REFERENCES department(deptid)
);

COMMIT;