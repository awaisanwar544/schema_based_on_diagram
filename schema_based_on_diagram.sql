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
