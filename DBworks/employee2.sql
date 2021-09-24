INSERT INTO employee(emp_id, name) VALUES ('e1004', '안산');
-- COMMIT 전에 실행하면 이전 상태로 돌아감 --
ROLLBACK;

SELECT * FROM employee;
DELETE FROM employee WHERE emp_id = 'e1001';


SELECT * FROM employee WHERE emp_id = 'e1003';
SELECT emp_id, name, age FROM employee WHERE emp_id = 'e1002';

-- 사원 추가 : INSERT INTO ~ VALUES --

-- 사원 정보 수정(UPDATE SET ~ WHERE) --
UPDATE employee set age = 31 WHERE emp_id = 'e1002';

-- 사원 삭제 (DELETE FROM 테이블이름 WHERE) --
-- 테이블유지 - 데이터만 삭제 --


COMMIT;
