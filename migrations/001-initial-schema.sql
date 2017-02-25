-- Up
PRAGMA foreign_keys = false;

-- DROP TABLE IF EXISTS "address";
CREATE TABLE "address" (
	 "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	 "rooms" text,
	 "metro" TEXT,
	 "street" TEXT,
	 "house_number" text,
	 "floor" text,
	 "floors" TEXT,
	 "total_sq" TEXT,
	 "live_sq" TEXT,
	 "kitchen_sq" TEXT,
	 "day" TEXT,
	 "month" TEXT,
	 "year" TEXT,
	 "base" TEXT,
	 "price" text,
	 "currency" TEXT,
	 "observation" TEXT,
	 "metro_name" TEXT,
	 "distric" TEXT,
	 "distance_center" text,
	 "duration_center" TEXT,
	 "distance_metro" text,
	 "duration_metro" TEXT,
	 "lat" TEXT,
	 "lad" TEXT
);
INSERT INTO "main".sqlite_sequence (name, seq) VALUES ("address", '0');

PRAGMA foreign_keys = true;


-- Down
DROP TABLE IF EXISTS "address";