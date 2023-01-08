--1) total seats won by parties
--select party,count(result_desc) as seats_won
--from candidates_ge15
--where result_desc='won'
--group by party
--order by 2 desc

--2) total marjority of parliment
--select c.party,sum(r.majoriti) as majority_ticket
--from candidates_ge15 c
--join results_parlimen_ge15 r
--	on c.parlimen=r.parlimen
--where c.result_desc='won'
--group by party
--order by 2 desc

--3) top 5 highest marjority of parliment
--select top (5) r.parlimen,majoriti,party,c.name
--from results_parlimen_ge15 r 
--join candidates_ge15 c
--	on r.parlimen=c.parlimen
--where c.result_desc='won'
--order by 2 desc

--4) top 5 lowest marjority of parliment
--select top (5) r.parlimen,majoriti,party,c.name
--from results_parlimen_ge15 r 
--join candidates_ge15 c
--	on r.parlimen=c.parlimen
--where majoriti is not null and c.result_desc='won'
--order by 2

--5) total seat of each state
--select state,count(distinct parlimen) as num_parliment
--from candidates_ge15
--group by state
--order by 2 desc

--6) average age of all candidate and gender
--with t1 as 
--	(select sex, count(*) as Yong_Adults
--	from candidates_ge15
--	where age<=39
--	group by sex),
--t2 as 
--	(select sex, count(*) as MiddleAge_Adults
--	from candidates_ge15
--	where age between 40 and 59
--	group by sex
--	),
--t3 as
--(select sex, count(*) as Old_Adults
--	from candidates_ge15
--	where age >=60
--	group by sex
--	)
--select *
--from t1
--join t2
--	on t1.sex=t2.sex
--join t3
--	on t2.sex=t3.sex


--7) total race of candidate
--with t1 as 
--	(select count(*) as Malay_and_aborigines
--	from candidates_ge15
--	where ethnicity='bumiputera'),
--t2 as 
--	(select count(*) as Chinese
--	from candidates_ge15
--	where ethnicity='Chinese'
--	),
--t3 as
--(select count(*) as Indian
--	from candidates_ge15
--	where ethnicity='Indian'
--	)
--select *
--from t1,t2,t3
