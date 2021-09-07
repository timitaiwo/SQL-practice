/*We saw that library visits have declined recently in most places . But 
what is the pattern in the use of technology in libraries? Both the 2014 
and 2009 library survey tables contain the columns gpterms (the number 
of internet-connected computers used by the public) and pitusr (uses of 
public internet computers per year) . Modify the code in Listing 8-13 to cal-
culate the percent change in the sum of each column over time*/

SELECT
	pls09.stabr,
	SUM(pls09.gpterms) AS devices_connected09,
	SUM(pls14.gpterms) AS devices_connected14,
	SUM(pls09.pitusr) AS public_uses09,
	SUM(pls14.pitusr) AS public_uses14,
   	ROUND((CAST(SUM(pls14.gpterms) AS numeric(10, 1)) - SUM(pls09.gpterms))/SUM(pls09.gpterms) * 100, 2) AS change_in_devices_connected,
	ROUND((CAST(SUM(pls14.pitusr) AS numeric(10, 1)) - SUM(pls09.pitusr))/SUM(pls09.pitusr) * 100, 2) AS inc_in_public_usage
FROM public.pls_fy2009_pupld09a as pls09
	JOIN public.pls_fy2014_pupld14a as pls14
		ON pls09.fscskey = pls14.fscskey
			WHERE (pls09.gpterms >= 0 AND pls14.gpterms >= 0)
				OR (pls09.pitusr >= 0 AND pls14.pitusr >= 0)
GROUP BY pls09.stabr
ORDER BY pls09.stabr ASC;