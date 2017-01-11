select inc.id, us_state as state, inj.name as injury, a.name affectedarea, c.name as cause from incidents inc
join injuries inj on inc.injury_id = inj.id
join affected_areas a on a.id = inj.affected_area_id
join causes c on c.id = inc.cause_id
where us_state = $1
