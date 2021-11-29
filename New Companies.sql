SELECT 
    T1.COMPANY_CODE,COMPANY.FOUNDER, T1.LM1,T1.SM1, T1.M1,T1.E1 
FROM (
    SELECT COM.COMPANY_CODE,COUNT(DISTINCT LM.LEAD_MANAGER_CODE) LM1 ,COUNT(DISTINCT SM.SENIOR_MANAGER_CODE) SM1, COUNT(DISTINCT MNG.MANAGER_CODE) M1, COUNT(DISTINCT EMP.EMPLOYEE_CODE) E1
        FROM COMPANY COM,LEAD_MANAGER LM, SENIOR_MANAGER SM, MANAGER MNG, EMPLOYEE EMP
    WHERE COM.COMPANY_CODE = LM.COMPANY_CODE AND
        LM.COMPANY_CODE = SM.COMPANY_CODE AND
        SM.COMPANY_CODE = MNG.COMPANY_CODE AND
        MNG.COMPANY_CODE = EMP.COMPANY_CODE
    GROUP BY COM.COMPANY_CODE
    ) T1, COMPANY
WHERE T1.COMPANY_CODE = COMPANY.COMPANY_CODE
ORDER BY T1.COMPANY_CODE;

