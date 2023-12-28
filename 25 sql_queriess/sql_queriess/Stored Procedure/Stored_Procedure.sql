call empl;


call states('maharashtra');


call states1('maharashtra',@total_count);
select @total_count as total;

call add2(5,3,@total);
select @total as add_sum;

