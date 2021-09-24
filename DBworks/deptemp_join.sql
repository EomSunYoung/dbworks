-- 사원 검색 --
SELECT * FROM employee;

-- 부서 검색 --
SELECT * FROM department;

-- 사원 추가 --
INSERT INTO employee VALUES (102, '안산', 20, 20);
INSERT INTO employee VALUES (101, '이강인', 21, 10);

-- 사원 테이블 --
CREATE TABLE employee(
	empid  INTEGER,
	name   TEXT NOT NULL,
	age    INTEGER,
	deptid INTEGER,
	PRIMARY KEY(empid),
	FOREIGN KEY(deptid) REFERENCES department(deptid)
);

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



COMMIT;