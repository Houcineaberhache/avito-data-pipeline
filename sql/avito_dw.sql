CREATE TABLE dim_vehicle (
	vehicle_id SERIAL PRIMARY KEY,
	marque varchar(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	annee INT,
	boite VARCHAR(50),
	carburant VARCHAR(50),
	kilometrage INT,
	nombre_portes INT,
	origine VARCHAR(100),
	premiere_main BOOLEAN,
	puissaance_fiscale INT,
	etat VARCHAR(50)
);

CREATE TABLE dim_seller(
	seller_id SERIAL PRIMARY KEY,
	boutique VARCHAR(150)
);

CREATE TABLE dim_time (
	time_id SERIAL PRIMARY KEY,
	full_date DATE NOT NULL,
	jour INT NOT NULL,
	mois INT NOT NULL,
	annee INT NOT NULL 
);

CREATE TABLE fact_listings (
	listing_id SERIAL PRIMARY KEY,
	vehicle_id INT NOT NULL,
	seller_id INT NOT NULL,
	time_id INT NOT NULL,
	prix DECIMAL(12,2) NOT NULL,
	url TEXT,
	FOREIGN KEY (vehicle_id) REFERENCES dim_vehicle(vehicle_id),
    FOREIGN KEY (seller_id) REFERENCES dim_seller(seller_id),
    FOREIGN KEY (time_id) REFERENCES dim_time(time_id)
);

