SELECT
    job_id,
    job_health_insurance,
    name,
    EXTRACT(QUARTER FROM job_posted_date) AS posted_Quarter

FROM job_postings_fact AS job_postings
LEFT JOIN company_dim AS companies ON job_postings.company_id = companies.company_id
WHERE
    EXTRACT(QUARTER FROM job_posted_date) = 2 AND
    job_health_insurance = TRUE

