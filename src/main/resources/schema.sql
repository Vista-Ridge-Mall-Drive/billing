drop table if exists pooltable;
drop table if exists rental_transaction;
drop table if exists bill_charge;





CREATE TABLE rental_transaction (
  id   			INTEGER      NOT NULL AUTO_INCREMENT,
  pooltable_id  INTEGER NOT NULL,
  start_time 	DATE,
  end_time 		DATE,
  rate_per_hour FLOAT,
  posted_flag  	BOOL,
  posted		DATE,
  PRIMARY KEY (id)
);


CREATE TABLE bill_charge (
  id   			INTEGER      NOT NULL AUTO_INCREMENT,
  rental_txn_id INTEGER,
  bill_date 	DATE,
  amount_charge FLOAT,
  discount      FLOAT,
  tip           FLOAT,
  amount_paid   FLOAT,
  posted_flag  	BOOL,
  posted		DATE,
  PRIMARY KEY (id)
);



);