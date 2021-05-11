select * from HR.job_history j 
    join HR.employees e on j.employee_id = e.employee_id 
    join HR.departments d on d.department_id = e.department_id;

--DROP INDEX IDX_DPT_ID;
--DROP IDX_DPT_ID_JOB;
--DROP IDX_EMP_ID_JOB;

CREATE INDEX IDX_DPT_ID ON EMPLOYEE(DEPARTMENT_ID);
CREATE INDEX IDX_DPT_ID_JOB ON JOB_HISTORY(DEPARTMENT_ID);
CREATE INDEX IDX_EMP_ID_JOB ON JOB_HISTORY(EMPLOYEE_ID);

set timing on
