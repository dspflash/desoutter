/*[13:41:20][  16 ms]*/ /*ALTER TABLE `desoutter`.`product_screw`     ADD COLUMN `done` BOOLEAN DEFAULT 0 AFTER `station_id`,     ADD COLUMN `dt` TIMESTAMP DEFAULT NOW() AFTER `done`;*/

/*[18:44:48][  32 ms]*/ /*ALTER TABLE `desoutter`.`product`     ADD COLUMN `actived` BOOLEAN DEFAULT '1' NULL AFTER `memo`;*/

/*[21:37:08][  15 ms]*/ CREATE TABLE `desoutter`.`iot`(     `tighteningid` BIGINT NOT NULL ,`topic` VARCHAR(50) DEFAULT NULL,     `pset` TINYINT ,     `tighteningstatus` VARCHAR(10) ,     `torquemin` DOUBLE(18,2) ,     `torquemax` DOUBLE(18,2) ,     `torque` DOUBLE(18,2) ,     `torquestatus` TINYINT ,     `anglemin` DOUBLE(18,2) ,     `anglemax` DOUBLE(18,2) ,     `angle` DOUBLE(18,2) ,     `anglestatus` TINYINT ,     `timestamp` VARCHAR(20) ,     PRIMARY KEY (`tighteningid`) ,     KEY `topic` (`topic`)
 );
