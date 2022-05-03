/* Create patients table */

CREATE TABLE patients (
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name varchar(250),
	date_of_birth date
);

/* Create medical_histories */

CREATE TABLE medical_histories (
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	admitted_at timestamp,
	patient_id int REFERENCES patients(id),
  status varchar(250)
);

/* Create invoices table */

CREATE TABLE invoices (
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	total_amount decimal,
	generated_at timestamp,
	payed_at timestamp,
	medical_history_id int REFERENCES medical_histories(id)
);

/* Create treatments table */

CREATE TABLE treatments (
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	type varchar(250),
	name varchar(250),
);