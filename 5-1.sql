--определение средней длительности аренды в зависимости 
--от типа недвижимости (отображение по убыванию)
--позволяет проанализировать, какая недвижимость пользуется большим спросом
select dp.property_type,
       AVG(fs.stay_duration) as avg_stay_days
from Fact_Stay fs
join Dim_Property dp on fs.property_sk = dp.property_sk
group by dp.property_type
order by avg_stay_days desc;

--просмотр недвижимости от самого долгосрочного среднего срока аренды, до 
--самого короткосрочного (отображение по убыванию)
--позволяет определить конкретные объекты недвижимости, которые снимали дольше всего
select dp.address,
       AVG(fs.stay_duration) as avg_stay
from Fact_Stay fs
join Dim_Property dp on fs.property_sk = dp.property_sk
group by dp.address
order by avg_stay desc;

--просмотр статистики спроса по годам
--позволяет определить в какой год был наибольший спрос на недвижимость
select 
    extract(year from fs.Start_date) as year,
    COUNT(*) as total_stays
from Fact_Stay fs 
group by year
order by year;




