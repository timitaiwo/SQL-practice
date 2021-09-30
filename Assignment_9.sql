/*In this exercise, you’ll turn the meat_poultry_egg_inspect table into useful infor-
mation . You need to answer two questions: how many of the plants in the table 
process meat, and how many process poultry?*/

ALTER TABLE public.meat_poultry_egg_inspect 
ADD COLUMN meat_processing boolean,
ADD COLUMN poultry_processing boolean;

UPDATE public.meat_poultry_egg_inspect
SET meat_processing = true
WHERE activities LIKE ('%Meat Processing%');

UPDATE public.meat_poultry_egg_inspect
SET poultry_processing = true
WHERE activities LIKE ('%Poultry Processing%');

SELECT COUNT(meat_processing) as meat_process_count,
	   COUNT(poultry_processing) as poultry_process_count,
	   COUNT(*) AS total_count
FROM public.meat_poultry_egg_inspect;