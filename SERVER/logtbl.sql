drop table log_insert;
create table log_insert(
	numnew number, log_date date);


drop table LOG_UPDEL;
create table LOG_UPDEL(
	priceold number, pricenew number, log_date date);