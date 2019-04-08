
/*Read in a text file.  In this code, I read in a text file
describing a list of job search activities, using a comma as
the delimiter and the first observation is actually the 2nd row.
*/      
DATA JOBHUNT; 
   infile  
   '/folders/myfolders/SASDATA/ActivitySchedule_20199.txt' DLM = ',' FIRSTOBS=2; 
   length Activity $ 30;
   format Activity $30.;
   input Activity $  Date mmddyy8. Description $;
   format Date mmddyy8.;
RUN;

PROC PRINT DATA = JOBHUNT;
RUN;