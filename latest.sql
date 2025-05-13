Create Database Comapny;
use Comapny;

Create Table Customer(Cname varchar(10),cid int primary key);
Create Table Product(Pname varchar(10),Pid int primary key,stock int);
Create Table Sales(cid int, Foreign key(cid) references Customer(cid), pid int, Foreign key(pid) references Product(Pid),Quantity int);

Insert into Customer values("Aby",21),("Leon",24),("Sig",22);
Insert into Product(Pname,Pid,stock) values ("Pen",2,500),("Pencil",1,750),("Eraser",3,200);
Insert into Sales values (21,2,100),(22,1,200),(24,3,50);

use Comapny;
call new_procedure();

Select * from new_view;


create trigger T1
after  
insert  
on Sales
FOR EACH ROW
update Product set stock=stock-new.Quantity
where Pid=new.Pid;
Select * from Product;
Insert into Sales values(21,2,200);

Drop trigger T1;

insert into Sales values(21,2,300);


