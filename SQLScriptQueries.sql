Student: Valery Taustsiakou    Student Number: G00296946       Project: Dental Practise, Database Design & Development 

SELECT statement: 
Return patients who have not paid the dental bill.
SELECT * FROM `PAYMENT` WHERE `BILL_PAID_AMOUNT`=0.00 AND BILL_ID = 4;
//Selected the payment record for the bill number 4. 


Update statement: 
UPDATE`appointments` SET `Reminder` = 'sent' WHERE (`APP_CANCELFEE`=null);
//updated the null values with sent before the patient would be charged with a late cancellation fee. 

Insertion query: 
INSERT INTO `PATIENTRECORDS`(`PAT_ID`, `PAT_NAME`, `PAT_DOB`, `EMAIL`, `PAT_ADDRESS`, `SPEC_ID`) VALUES ('11','Cian Mulloy','1993/10/07','cianmulloy@gmail.com','55 North Charleville Co. Cork','null');
//the autoincrement function was selected to the primary key after the build of the database table was created without the primary set at autoincrement. Therefore, the insert function always targetted the insertion of a new record at patient ID of zeroe and alerted me when I left the brackets empty when inserting patient number 12. It was not possible to import a new table with the autoincrement statement in the SQL code into a new database//

Delete: DELETE FROM `patientrecords` WHERE `PAT_ID` = '7'
//This deletion has deleted the example of a cancel fee of 10.00 that was applied during the build of the database. 

Left Join: 
SELECT `treatment`.TREAT_ID, treatment.TREAT_PRICE
FROM `treatment`treatment
LEFT JOIN `payment` ON payment.TREAT_ID = treatment.TREAT_ID
ORDER BY payment.TREAT_ID;
//checked the cost of the treatment and the ID of the treatment matched.

//the other option that was attempted was an inner join & create view. Create view was effective to show appoinntment ID and appointment time which were stacked on top of one another. 
