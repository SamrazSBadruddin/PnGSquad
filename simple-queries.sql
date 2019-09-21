--We are checking if the adverse effects are localized to a certain age range and we can see that elderly only make up <15%
--We were able to do this for all the PrimaryInfo_years
select vaers_id
from hss_staging.PrimaryInfo_2014
where age_yrs > 65
order by vaers_id

select vaers_id
from hss_staging.PrimaryInfo_2015
where age_yrs > 65
order by vaers_id


select vaers_id
from hss_staging.PrimaryInfo_2016
where age_yrs > 65
order by vaers_id

--This query tells us what is the most to least popular vaccination site when an adverse event occured so we might be able to see some trends 
--We were able to do this for all the Symptoms_year

select
  vax_site,
  count(vax_site)
from hss_staging.Vaccines_2014
group by 
  vax_site
order by 
  count( vax_site ) desc

  select
  vax_site,
  count(vax_site)
from hss_staging.Vaccines_2015
group by 
  vax_site
order by 
  count( vax_site ) desc

  select
  vax_site,
  count(vax_site)
from hss_staging.Vaccines_2016
group by 
  vax_site
order by 
  count( vax_site ) desc

--This query helps us see the most common symptoms and could help us group reasons for why patients might have had an adverse effect
--We were able to do this for all the Vaccines_year

select
  symptom1,
  count(symptom1)
from hss_staging.Symptoms_2014
group by 
  symptom1
order by 
  count(symptom1) desc

  select
  symptom1,
  count(symptom1)
from hss_staging.Symptoms_2015
group by 
  symptom1
order by 
  count(symptom1) desc

  select
  symptom1,
  count(symptom1)
from hss_staging.Symptoms_2016
group by 
  symptom1
order by 
  count(symptom1) desc