SELECT a.scenario_id, a.parameter_id,c.name as parameter_name, (b.day-a.duration) as day_goal, ceil(b.units_day/a.divider) as unit_goal, 
                             a.process_id, d.name as process_name ,b.day as day, b.month as month, b.year as year, b.week_day, e.product_id, e.name as product_name,
                             TO_CHAR(b.week,'DD/MM/YYYY') week, d.calendar_id, capacity 
                             FROM txscenarioformula a 
                             LEFT JOIN txscenarioparameterday b on a.scenario_id = b.scenario_id and a.parameter_id = b.parameter_id 
                             LEFT JOIN mdparameter c on a.parameter_id = c.parameter_id 
                             LEFT JOIN mdprocess d on a.process_id = d.process_id 
                             LEFT JOIN mdproduct e on d.product_id = e.product_id 
                             WHERE a.scenario_id =106 and c.type ='Salida' order by parameter_id, month, day, year, process_order ASC