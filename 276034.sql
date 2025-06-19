-- 코드를 작성해주세요 DEVELOPERS 테이블에서 Python이나 C# 스킬을 가진 개발자의 정보를 조회하려 합니다. 조건에 맞는 개발자의 ID, 이메일, 이름, 성을 조회하는 SQL 문을 작성해 주세요.

SELECT A.ID, A.EMAIL, A.FIRST_NAME, A.LAST_NAME FROM DEVELOPERS A INNER JOIN (SELECT SUM(CODE) AS CODE FROM SKILLCODES WHERE NAME='C#' OR NAME='Python') B ON A.SKILL_CODE & B.CODE > 0 ORDER BY ID ASC;