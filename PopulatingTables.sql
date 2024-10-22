-- File containing data insertions

insert into Department values(1,"Surgery");
insert into Department values(2,"Neurology");
insert into Department values(3,"Psychiatry");
insert into Department values(4,"Ent");
insert into Department values(5,"Eye");
insert into Department values(6,"Dental");
insert into Department values(7,"Orthology");
insert into Department values(8,"Cardiology");
insert into Department values(9,"Radiology");
insert into Department values(10,"Gynaecology");



insert into Hospital values("Apex City Hospital","D-440, Hanuman road,West Vinod Nagar, New Delhi, Delhi","DL2413643");
insert into Hospital values("Yashoda Hospital","III-M, Motilal Nehru Nagar, Near Nehru Nagar Stadium, Nehru Nagar, Ghaziabad","GZ5346829");
insert into Hospital values("Mission Hosptal","Near Bahadurgarh City Metro Station, Rohtak Rd, Bahadurgarh, Haryana","HR7672845");



insert into Doctor values("Chetna Sharma",'F',1,"AC2464","DL2413643");
insert into Doctor values("Amit Saxena",'M',1,"AC2498","DL2413643");
insert into Doctor values("Virendra dua",'M',2,"AC2456","DL2413643");
insert into Doctor values("Sakshi Ahuja",'F',7,"AC2434","DL2413643");
insert into Doctor values("Narendra Gautam",'M',7,"AC2488","DL2413643");

insert into Doctor values("Aryan Kalra",'M',2,"YA5326","GZ5346829");
insert into Doctor values("Tanishka Khanna",'F',4,"YA5385","GZ5346829");
insert into Doctor values("Himanshu Saxena",'M',4,"YA5396","GZ5346829");
insert into Doctor values("Kartik Singh",'M',8,"YA5322","GZ5346829");
insert into Doctor values("Sarthak Taneja",'M',6,"YA5368","GZ5346829");
insert into Doctor values("Harshita Gupta",'F',8,"YA5377","GZ5346829");

insert into Doctor values("Hardik Kumar",'M',1,"MS7664","HR7672845");
insert into Doctor values("Srishti Singh",'F',3,"MS7698","HR7672845");
insert into Doctor values("Madhurima Kukreja",'F',3,"MS7656","HR7672845");
insert into Doctor values("Saksham Sinha",'M',5,"MS7634","HR7672845");
insert into Doctor values("Gautam Vig",'M',9,"MS7688","HR7672845");
insert into Doctor values("Saarika Gupta",'F',5,"MS7668","HR7672845");
insert into Doctor values("Shweta Judeja",'F',9,"MS7677","HR7672845");
insert into Doctor values("Rashmi Thakur",'F',10,"AC2499","DL2413643");
insert into Doctor values("Dinesh Sisaudia",'M',10,"YA5399","GZ5346829");
insert into Doctor values("Ayushman Khurana",'M',10,"MS7699","HR7672845");



insert into Patient values("Kartikey Sharma","Appendicitis",'F',"MS7664","HR7672845","I04241");
insert into Patient values("Pankaj Mishra","Autism",'M',"YA5326","GZ5346829","I18482");
insert into Patient values("Sagar dua","Epilepsy",'M',"AC2456","DL2413643","I11645");
insert into Patient values("Sakshi Taneja","Rheumatoid Arthritis",'F',"AC2434","DL2413643","I27654");
insert into Patient values("Raghvendra Gautam","Periodontal",'M',"YA5368","GZ5346829","I11786");
insert into Patient values("Archana Kalra","Appendicitis",'M',"AC2498","DL2413643","I38249");
insert into Patient values("Trasha Khanna","Alzheimer",'F',"MS7677","HR7672845","I76453");
insert into Patient values("Kabir Saxena","Ear Infections",'M',"YA5396","GZ5346829","O66345");
insert into Patient values("Kartik Gupta","Cataract",'M',"MS7634","HR7672845","O98347");
insert into Patient values("Sarthak Mishra","Osteoarthritis",'M',"AC2488","DL2413643","I34768");
insert into Patient values("Harshita Gor","Heart Attack",'F',"YA5377","GZ5346829","I78602");
insert into Patient values("Sudha Sinha","Dry Eye and pain",'F',"MS7668","HR7672845","O97028");
insert into Patient values("Krishna Gor","Pancreatitis",'M',"AC2464","DL2413643","I45467");
insert into Patient values("Srishti Pal","Depression",'F',"MS7698","HR7672845","O74398");
insert into Patient values("Madhu Jain","BiPolar Disorder",'F',"MS7656","HR7672845","I36985");
insert into Patient values("Mohammad Ali","High Blood Pressure",'M',"YA5322","GZ5346829","O16387");
insert into Patient values("Shalin Chaudhary","Brain tumors",'M',"MS7688","HR7672845","I71493");
insert into Patient values("Anmol Jain","Sinusitis",'F',"YA5385","GZ5346829","O26245");
insert into Patient values("Anuradha Khanna","Hormonal disorders",'F',"YA5399","GZ5346829","O87343");
insert into Patient values("Jasmine Sharma","Hormonal disorders",'F',"MS7699","HR7672845","I34984");
insert into Patient values("Divya Kashyap","Menstrual disorders",'F',"AC2499","DL2413643","O34702");



insert into Bill values(18000,"INP",04241,"I04241","Kartikey Sharma");
insert into Bill values(20000,"INP",18482,"I18482","Pankaj Mishra");
insert into Bill values(20000,"INP",11645,"I11645","Sagar dua");
insert into Bill values(15000,"INP",27654,"I27654","Sakshi Taneja");
insert into Bill values(3200,"INP",11786,"I11786","Raghvendra Gautam");
insert into Bill values(17500,"INP",38249,"I38249","Archana Kalra");
insert into Bill values(22570,"INP",76453,"I76453","Trasha Khanna");
insert into Bill values(2000,"OUP",66345,"O66345","Kabir Saxena");
insert into Bill values(8000,"OUP",98347,"O98347","Kartik Gupta");
insert into Bill values(15000,"INP",34768,"I34768","Sarthak Mishra");
insert into Bill values(255000,"INP",78602,"I78602","Harshita Gor");
insert into Bill values(2000,"OUP",97028,"O97028","Sudha Sinha");
insert into Bill values(18000,"INP",45467,"I45467","Krishna Gor");
insert into Bill values(5000,"OUP",74398,"O74398","Srishti Pal");
insert into Bill values(8000,"INP",36985,"I36985","Madhu Jain");
insert into Bill values(2800,"OUP",16387,"O16387","Mohammad Ali");
insert into Bill values(256250,"INP",71493,"I71493","Shalin Chaudhary");
insert into Bill values(2250,"OUP",26245,"O26245","Anmol Jain");
insert into Bill values(3250,"OUP",87343,"O87343","Anuradha Khanna");
insert into Bill values(8250,"INP",34984,"I34984","Jasmine Sharma");
insert into Bill values(3370,"OUP",34702,"O34702","Divya Kashyap");



insert into Room values("AC001","busy");
insert into Room values("AC002","busy");
insert into Room values("AC101","vacant");
insert into Room values("AC102","busy");
insert into Room values("AC201","vacant");
insert into Room values("AC202","busy");
insert into Room values("AC301","vacant");
insert into Room values("AC302","busy");
insert into Room values("MS001","busy");
insert into Room values("MS002","busy");
insert into Room values("MS003","busy");
insert into Room values("MS101","busy");
insert into Room values("MS102","vacant");
insert into Room values("MS103","busy");
insert into Room values("MS201","vacant");
insert into Room values("MS202","vacant");
insert into Room values("MS203","vacant");
insert into Room values("YA001","vacant");
insert into Room values("YA002","busy");
insert into Room values("YA003","vacant");
insert into Room values("YA004","busy");
insert into Room values("YA005","vacant");
insert into Room values("YA101","vacant");
insert into Room values("YA102","vacant");
insert into Room values("YA103","busy");
insert into Room values("YA201","vacant");
insert into Room values("YA202","vacant");
insert into Room values("YA203","vacant");



insert into Lab_Report values("MS7664","HR001","I04241","2023-01-01");
insert into Lab_Report values("AC2456","DL001","I11645","2023-01-10");
insert into Lab_Report values("YA5368","GZ001","I11786","2023-01-15");
insert into Lab_Report values("YA5326","GZ002","I18482","2023-02-13");
insert into Lab_Report values("AC2434","DL002","I27654","2023-02-09");
insert into Lab_Report values("AC2488","DL003","I34768","2023-02-01");
insert into Lab_Report values("MS7699","HR002","I34984","2023-03-11");
insert into Lab_Report values("MS7656","HR003","I36985","2023-03-31");
insert into Lab_Report values("AC2498","DL004","I38249","2023-03-21");
insert into Lab_Report values("AC2464","DL005","I45467","2023-04-01");
insert into Lab_Report values("MS7688","HR004","I71493","2023-04-16");
insert into Lab_Report values("MS7677","HR005","I76453","2023-04-18");
insert into Lab_Report values("YA5377","GZ003","I78602","2023-01-01");
insert into Lab_Report values("YA5322","GZ004","O16387","2023-01-01");
insert into Lab_Report values("YA5385","GZ005","O26245","2023-01-08");
insert into Lab_Report values("AC2499","DL006","O34702","2023-02-04");
insert into Lab_Report values("YA5396","GZ006","O66345","2023-02-02");
insert into Lab_Report values("MS7698","HR006","O74398","2023-02-12");
insert into Lab_Report values("YA5399","GZ007","O87343","2023-03-27");
insert into Lab_Report values("MS7668","HR007","O97028","2023-03-23");
insert into Lab_Report values("MS7634","HR008","O98347","2023-03-21");



insert into Inpatient values("I04241","MS7664","MS001","HR001","2023-01-01","2023-01-05",04241);
insert into Inpatient values("I18482","YA5326","YA002","GZ002","2023-02-13","2023-02-23",18482);
insert into Inpatient values("I11645","AC2456","AC001","DL001","2023-01-10","2023-01-18",11645);
insert into Inpatient values("I27654","AC2434","AC102","DL002","2023-02-09","2023-02-12",27654);
insert into Inpatient values("I11786","YA5368","YA004","GZ001","2023-01-15","2023-01-21",11786);
insert into Inpatient values("I38249","AC2498","AC302","DL004","2023-03-21","2023-03-28",38249);
insert into Inpatient values("I76453","MS7677","MS002","HR005","2023-04-18","2023-04-23",76453);
insert into Inpatient values("I34768","AC2488","AC002","DL003","2023-02-01","2023-02-08",34768);
insert into Inpatient values("I78602","YA5377","YA103","GZ003","2023-01-01","2023-01-13",78602);
insert into Inpatient values("I45467","AC2464","AC202","DL005","2023-04-01","2023-04-05",45467);
insert into Inpatient values("I36985","MS7656","MS101","HR003","2023-03-31","2023-04-4",36985);
insert into Inpatient values("I71493","MS7688","MS003","HR004","2023-04-16","2023-04-20",71493);
insert into Inpatient values("I34984","MS7699","MS103","HR002","2023-03-11","2023-03-12",34984);



insert into Outpatient values("O66345","YA5396","GZ006",66345);
insert into Outpatient values("O98347","MS7634","HR008",98347);
insert into Outpatient values("O97028","MS7668","HR007",97028);
insert into Outpatient values("O74398","MS7698","HR006",74398);
insert into Outpatient values("O16387","YA5322","GZ004",16387);
insert into Outpatient values("O26245","YA5385","GZ005",26245);
insert into Outpatient values("O87343","YA5399","GZ007",87343);
insert into Outpatient values("O34702","AC2499","DL006",34702);



insert into phone_no values("I04241",9981234567);
insert into phone_no values("I04241",9821238762);
insert into phone_no values("I04241",8982245612);

insert into phone_no values("I18482",8826543972);
insert into phone_no values("I18482",9825324434);

insert into phone_no values("I11645",9821456780);

insert into phone_no values("I27654",9350952320);
insert into phone_no values("I27654",8723983768);
insert into phone_no values("I27654",9389817874);

insert into phone_no values("I11786",8368169426);

insert into phone_no values("I38249",9818402198);

insert into phone_no values("I76453",9971068412);
insert into phone_no values("I76453",8973278152);

insert into phone_no values("I34768",7428318429);
insert into phone_no values("I34768",9021838967);

insert into phone_no values("I78602",7838016872);

insert into phone_no values("I45467",8865720432);

insert into phone_no values("I36985",7754904332);

insert into phone_no values("I71493",9900655442);

insert into phone_no values("I34984",8809065242);
insert into phone_no values("I34984",9893728678);

insert into phone_no values("O66345",9898956562);

insert into phone_no values("O98347",8888743256);
insert into phone_no values("O98347",7865746290);
insert into phone_no values("O98347",9778878687);

insert into phone_no values("O97028",7766234091);
insert into phone_no values("O97028",7864646765);

insert into phone_no values("O74398",7723498723);

insert into phone_no values("O16387",8368724231);
insert into phone_no values("O16387",7867857646);
insert into phone_no values("O16387",9885675644);

insert into phone_no values("O26245",9878815463);
insert into phone_no values("O87343",8696217856);
insert into phone_no values("O34702",9862387892);



insert into Nurse values("Manisha Thakur","MS001");
insert into Nurse values("Vineeta Kumari","YA002");
insert into Nurse values("Sonali Phogat","AC001");
insert into Nurse values("Arti Singh","AC102");
insert into Nurse values("Pooja Sharma","YA004");
insert into Nurse values("Heena Sharma","AC302");
insert into Nurse values("Shefali Singh","MS002");
insert into Nurse values("Garima Saxena","AC002");
insert into Nurse values("Pranjal Dua","YA103");
insert into Nurse values("Diya Verma","AC202");
insert into Nurse values("Khushi Kohli","MS101");
insert into Nurse values("Divya Sharma","MS003");
insert into Nurse values("Daya Shankar","MS103");
insert into Nurse values("Anjali Rathore","AC101");
insert into Nurse values("Komal Singh","AC201");
insert into Nurse values("Sarika Jaiswal","AC301");
insert into Nurse values("Kiran Singh","MS102");
insert into Nurse values("Roshni vats","MS201");
insert into Nurse values("Anju Sharma","MS202");
insert into Nurse values("Manju Shivas","MS203");
insert into Nurse values("Aparna Jaiswal","YA001");
insert into Nurse values("Karishma Vats","YA003");
insert into Nurse values("Arushi Chawla","YA005");
insert into Nurse values("Pooja Shokeen","YA101");
insert into Nurse values("Kamini Vats","YA102");
insert into Nurse values("Megha Vats","YA201");
insert into Nurse values("Sarika Kapoor","YA202");
insert into Nurse values("Shefali Shokeen","YA203");



insert into works_for values("DL2413643",1);
insert into works_for values("DL2413643",2);
insert into works_for values("DL2413643",7);
insert into works_for values("DL2413643",10);

insert into works_for values("GZ5346829",2);
insert into works_for values("GZ5346829",4);
insert into works_for values("GZ5346829",6);
insert into works_for values("GZ5346829",8);
insert into works_for values("GZ5346829",10);

insert into works_for values("HR7672845",1);
insert into works_for values("HR7672845",3);
insert into works_for values("HR7672845",5);
insert into works_for values("HR7672845",9);
insert into works_for values("HR7672845",10);
