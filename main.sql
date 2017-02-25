/*
 Navicat Premium Data Transfer

 Source Server         : youdo_yamaps
 Source Server Type    : SQLite
 Source Server Version : 3008008
 Source Database       : main

 Target Server Type    : SQLite
 Target Server Version : 3008008
 File Encoding         : utf-8

 Date: 02/24/2017 14:34:48 PM
*/

PRAGMA foreign_keys = false;

-- ----------------------------
--  Table structure for _address_old_20170224
-- ----------------------------
DROP TABLE IF EXISTS "_address_old_20170224";
CREATE TABLE "_address_old_20170224" (
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
	 "date" TEXT,
	 "base" TEXT,
	 "price" text,
	 "currency" TEXT,
	 "observation" TEXT
);
INSERT INTO "main".sqlite_sequence (name, seq) VALUES ("_address_old_20170224", '0');

-- ----------------------------
--  Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS "address";
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
	 "observation" TEXT
);
INSERT INTO "main".sqlite_sequence (name, seq) VALUES ("address", '0');

-- ----------------------------
--  Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS "migrations";
CREATE TABLE "migrations" (
  id   INTEGER PRIMARY KEY,
  name TEXT    NOT NULL,
  up   TEXT    NOT NULL,
  down TEXT    NOT NULL
);

PRAGMA foreign_keys = true;
