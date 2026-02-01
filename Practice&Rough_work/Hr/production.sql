CREATE TABLE 
    prod(Date Date,Shift text(10),Part_No text(10),Production bigint)
    select Date,Shift,Part_No,Production from Production



with cte as (
select date,sum(Production)as sumT from Production
group by date
order by date)
select date_format(date,'%M'),round(avg(sumT),0) from cte 
group by date_format(date,'%M')













-- group by date_format(date,'%M');