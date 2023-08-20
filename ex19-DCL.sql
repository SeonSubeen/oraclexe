/*
���ϸ�: ex19-DCL.sql

DCL(Data Control Language)
    DCL�� ���̺� �����͸� ������ �� �ʿ��� ������ �����ϴ� ��ɾ�
    
���� Ű����
    CONNECT : �����ͺ��̽��� �����ϴ� ������ �����մϴ�.
    RESOUCE : ���̺�, ������ ���ν��� ���� ������ �� �ִ� ������ �ο��մϴ�.
    ALTER, DROP : ��ü�� ���� �Ǵ� ���� ������ �����մϴ�.
    DBA : �����ͺ��̽� �����ڷμ� �ý����� ������ ������ �� �ִ� ������ �ο��մϴ�.
*/

ALTER SESSION SET "_ORACLE_SCRIPT"=true;

-- ����� �����ϱ�
CREATE USER scott IDENTIFIED BY tiger;

-- GRANT ���� �����ֱ�
GRANT CREATE SESSION TO scott;
GRANT CONNECT TO scott;

-- GRANT ���� ���� �����ϱ�
REVOKE CREATE SESSION FROM scott;
REVOKE CONNECT FROM scott;

-- OBJECT �����ֱ�
GRANT CREATE SEQUENCE TO scott;
GRANT CREATE SYNONYM TO scott;
GRANT CREATE TABLE TO scott;
GRANT CREATE PROCEDURE TO scott;
GRANT CREATE VIEW TO scott;

-- ��� �����ֱ�
GRANT CONNECT, DBA, RESOURCE TO scott;

-- ���� �����ϱ�
REVOKE CONNECT, DBA, RESOURCE FROM scott;

-- ����� ��й�ȣ ����
ALTER USER scott IDENTIFIED BY tiger2;

/*
ROLE - ���� �׷�
*/

-- role �������
CREATE ROLE role01;

-- role ���� �Ҵ�
GRANT CREATE SESSION, CREATE TABLE, INSERT ANY TABLE TO role01;

-- ����ڿ��� role �ο�
GRANT role01 TO scott;
REVOKE role01 FROM scott;

-- ����� �����ϱ�
DROP USER scott;
DROP USER scott CASCADE;
