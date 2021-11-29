# MODULE_7-Challenge

## Overview of the Analysis

    The purpose of this analysis was to use the given data of the Pewlett Hackard employee data and give a
report of the number of retiring employees.  Also, the title by which they will be retiring was also to be
reported.  Furthermore, the data was to be used to give the number of employees eligible for the Mentorship
Program available to them as well.  There was a very large number of employees on the database so SQL was
used to analyze the data and give the results.

## Results

	After the data was thoroughly, the data which was asked for was reported in clean, easy to read tables.  The tables which were reported were the titles of the employees over their career at retirement Pewlett Hackard, unique titles and retiring titles of the employees.  The titles over their career table was every title the employee ever had over his/her time at the company.  The unique titles table was the table which combined every employee duplicate names in the retirement table.  This means that if a certain employee held more than one title of the course of his/her career, it was combined in to one row so it doesn’t seem like there are more employees retiring than there really is.  The retirement titles table was the table which shows the number of employees at the title of their retirement.  Another result which was reported was the mentorship eligibility count of employees working in the company.

	To retrieve this data for the report there were a few functions which were used in SQL to put them in tables.  First the “INTO” was used to retrieve the retirement title, and mentorship eligibility tables.  The “DISTINCT ON” function was used to retrieve the data for the unique titles table.

## Summary

	In summary, we were asked to give the number of retiring employees, their unique titles, and count of retiring employees with the most recent title at retirement.  The other question which was asked was to report the number of employees which were eligible for mentorship.  Those questions were answered and reported to management with tables from using SQL.
