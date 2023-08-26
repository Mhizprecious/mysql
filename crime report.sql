select*
from crime_scene_report
where type ="murder"AND date= 20180115 AND city="SQL City"
--Security footage shows that there were 2 witnesses.
--The first witness lives at the last house on "Northwestern Dr".
--The second witness, named Annabel, lives somewhere on "Franklin Ave".


SELECT*
FROM person
WHERE address_street_name="Northwestern Dr"
ORDER by address_number DESC
limit 1
-- morty schapiro 14887

select*
from person
where address_street_name ="Franklin Ave" and name like "%Annabel%"
--annabel 16371

SELECT*
 from interview
 where person_id in (14887,16371)
 
 select* from get_fit_now_member
 where id LIKE"48Z%"and membership_status="gold"
 ----28819/joe germuska 48Z7A
------67318 jeremy bowers 48Z55

 
 SELECT*
 FROM drivers_license
 WHERE plate_number LIKE "%H42W%" AND gender = "male"
 -----platenumber OH42W2/4H42WR
 
 SELECT*
 FROM get_fit_now_check_in
 WHERE check_in_date= 20180109 AND membership_id IN ("48Z7A","48Z55")
 
 select person.name,license_id,ssn,drivers_license.plate_number,car_make,gender
 from drivers_license
 join person
 on drivers_license.id=person.license_id
 where person.id in (28819,67318)
 ----jeremy bowers. platenumber 0H42W2
select* 
from interview
where person_id =67318
