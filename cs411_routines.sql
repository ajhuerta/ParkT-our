-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: cs411
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping events for database 'cs411'
--

--
-- Dumping routines for database 'cs411'
--
/*!50003 DROP PROCEDURE IF EXISTS `rec` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rec`(IN Park_Keyword VARCHAR(45), IN select_date VARCHAR(45), IN select_day VARCHAR(45),
												  IN Act_Keyword VARCHAR(45))
BEGIN

    DECLARE done int default 0;
    DECLARE _c_count INT;
    DECLARE _c_status VARCHAR(20);
    DECLARE _date date;
    DECLARE _park VARCHAR(4);
    DECLARE _parkname VARCHAR(255);
	DECLARE Pcode VARCHAR(4);
	DECLARE Pname VARCHAR(255) ;
	DECLARE ActNum INT;
	DECLARE actStatus VARCHAR(45);    
    
    DECLARE _ParkName1 VARCHAR(255);
    DECLARE _Fee DOUBLE;
    DECLARE _Date1 DATE;
    DECLARE _Temperature DOUBLE;
    DECLARE _Weather_Description VARCHAR(45);
    DECLARE _Day VARCHAR(45);
    DECLARE _Hours VARCHAR(45);
    DECLARE _URL VARCHAR(255);
    DECLARE _ActivityName VARCHAR(45);
	DECLARE _Activity_Choice VARCHAR(45);
    DECLARE _Crowdedness VARCHAR(20);
    -- DECLARE _Confirmed_Date DATE;
    
    -- First Advanced Query
    DECLARE cur CURSOR FOR (SELECT pa.ParkCode, pa.ParkName, COUNT(pc.Email)
                            FROM  Park pa LEFT JOIN Plan_Confirmed pc ON pc.ParkCode = pa.ParkCode
                            GROUP BY pa.ParkCode);
	
    -- Second Advanced Query
	DECLARE ActNumCur CURSOR FOR (SELECT Activities.ParkCode, Park.ParkName, COUNT(Activities.ActivityName)
								  FROM Activities NATURAL JOIN Park
							      GROUP BY Activities.ParkCode);
    -- Third Advanced Query                              
    DECLARE recCur CURSOR FOR (SELECT t1.ParkName, Entrance_Fee, t2.Date, Temperature, Weather_Description, Day, Hours, URL, ActivityName, Activity_Choice, Crowdedness
								FROM (SELECT * 
									  FROM Park 
									  WHERE ParkName LIKE Park_Keyword) AS t1 
									  NATURAL JOIN
									 (SELECT * 
									  FROM Weather 
									  WHERE Weather.Date = select_date) AS t2 
									  NATURAL JOIN operating_hours
									  NATURAL JOIN articles
									  NATURAL JOIN activities
									  JOIN Act_Status USING (ParkCode)
									  JOIN CrowdTable USING (ParkCode)
								WHERE operating_hours.Day = select_day AND activities.ActivityName LIKE Act_Keyword);
                                
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
    DROP TABLE IF EXISTS CrowdTable;
    
    CREATE TABLE CrowdTable (
    ParkCode VARCHAR(4),
    ParkName VARCHAR(255),
    Crowdedness VARCHAR(20)
    );
    
    OPEN cur;
    REPEAT
        FETCH cur INTO _park, _parkname, _c_count;
        IF _c_count <= 5 THEN
            SET _c_status = 'Not popular';
        ELSEIF  _c_count <= 10 THEN
            SET _c_status = 'Normal';
        ELSEIF  _c_count > 10 THEN
            SET _c_status = 'Popular';
        END IF;
        
        INSERT INTO CrowdTable VALUES (_park, _parkname, _c_status);
    UNTIL done
    END REPEAT;
    CLOSE cur;
	
    DROP TABLE IF EXISTS Act_Status;
	CREATE TABLE Act_Status(
	ParkCode VARCHAR(4), 
	ParkName VARCHAR(255),
	Activity_Choice VARCHAR(45)
	);
	
	OPEN ActNumCur;
	BEGIN
		DECLARE exit_flag BOOLEAN DEFAULT FALSE;
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET exit_flag=TRUE;
		
		cloop: LOOP
			FETCH ActNumCur INTO Pcode, Pname, ActNum;
			
			IF Pcode = NULL THEN
				LEAVE cloop;
			ELSEIF exit_flag THEN
				LEAVE cloop;
			END IF;
			
			IF ActNum > 12  THEN
				SET actStatus = "Abundant";
			ELSE
				SET actStatus = "Less";
			END IF;
			
			INSERT INTO Act_Status VALUES (Pcode, Pname, actStatus);
		END LOOP cloop;
	END;

	CLOSE ActNumCur;
    
    -- Third Advanced Query
	DROP TABLE IF EXISTS Recommendation;
	CREATE TABLE Recommendation(
	ParkName VARCHAR(255),
    Entrance_Fee DOUBLE,
    Date DATE,
    Temperature DOUBLE,
    Weather_Description VARCHAR(45),
    Day VARCHAR(45),
    Hours VARCHAR(45),
    URL VARCHAR(255),
    ActivityName VARCHAR(45),
	Activity_Choice VARCHAR(45),
    Crowdedness VARCHAR(20)
	);
	
	OPEN recCur;
	BEGIN
		DECLARE exit_flag1 BOOLEAN DEFAULT FALSE;
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET exit_flag1=TRUE;
		
		cloop: LOOP
			FETCH recCur INTO _ParkName1, _Fee, _Date1, _Temperature, _Weather_Description, _Day, _Hours, _URL, _ActivityName, _Activity_Choice, _Crowdedness;
			IF _ParkName1 = NULL THEN
				LEAVE cloop;
			ELSEIF exit_flag1 THEN
				LEAVE cloop;
			END IF;
            
			INSERT INTO Recommendation VALUES (_ParkName1, _Fee, _Date1, _Temperature, _Weather_Description, _Day, _Hours, _URL, _ActivityName, _Activity_Choice, _Crowdedness);
		END LOOP cloop;
	END;

	CLOSE recCur;
	
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-19  4:15:05
