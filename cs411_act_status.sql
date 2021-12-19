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
-- Table structure for table `act_status`
--

DROP TABLE IF EXISTS `act_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_status` (
  `ParkCode` varchar(4) DEFAULT NULL,
  `ParkName` varchar(255) DEFAULT NULL,
  `Activity_Choice` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_status`
--

LOCK TABLES `act_status` WRITE;
/*!40000 ALTER TABLE `act_status` DISABLE KEYS */;
INSERT INTO `act_status` VALUES ('abli','Abraham Lincoln Birthplace National Historical Park','Less'),('acad','Acadia National Park','Abundant'),('adam','Adams National Historical Park','Less'),('afam','African American Civil War Memorial','Less'),('afbg','African Burial Ground National Monument','Less'),('agfo','Agate Fossil Beds National Monument','Abundant'),('alag','Alagnak Wild River','Less'),('alca','Alcatraz Island','Less'),('aleu','Aleutian Islands World War II National Historic Area','Less'),('alfl','Alibates Flint Quarries National Monument','Less'),('alka','Ala Kahakai National Historic Trail','Abundant'),('alpo','Allegheny Portage Railroad National Historic Site','Abundant'),('amis','Amistad National Recreation Area','Abundant'),('amme','American Memorial Park','Less'),('anac','Anacostia Park','Abundant'),('anch','Alaska Public Lands','Less'),('ande','Andersonville National Historic Site','Abundant'),('ania','Aniakchak National Monument & Preserve','Less'),('anjo','Andrew Johnson National Historic Site','Less'),('anti','Antietam National Battlefield','Abundant'),('apco','Appomattox Court House National Historical Park','Abundant'),('apis','Apostle Islands National Lakeshore','Abundant'),('appa','Appalachian National Scenic Trail','Abundant'),('arch','Arches National Park','Abundant'),('arho','Arlington House, The Robert E. Lee Memorial','Less'),('arpo','Arkansas Post National Memorial','Abundant'),('asis','Assateague Island National Seashore','Abundant'),('azru','Aztec Ruins National Monument','Less'),('badl','Badlands National Park','Abundant'),('band','Bandelier National Monument','Abundant'),('bawa','Baltimore-Washington Parkway','Less'),('bela','Bering Land Bridge National Preserve','Abundant'),('beol','Bent\'s Old Fort National Historic Site','Abundant'),('bepa','Belmont-Paul Women\'s Equality National Monument','Less'),('bibe','Big Bend National Park','Abundant'),('bica','Bighorn Canyon National Recreation Area','Abundant'),('bicr','Birmingham Civil Rights National Monument','Less'),('bicy','Big Cypress National Preserve','Abundant'),('biho','Big Hole National Battlefield','Abundant'),('bisc','Biscayne National Park','Abundant'),('biso','Big South Fork National River & Recreation Area','Abundant'),('bith','Big Thicket National Preserve','Abundant'),('blca','Black Canyon Of The Gunnison National Park','Abundant'),('blri','Blue Ridge Parkway','Abundant'),('blrv','Blackstone River Valley National Historical Park','Abundant'),('blue','Bluestone National Scenic River','Abundant'),('boaf','Boston African American National Historic Site','Less'),('boha','Boston Harbor Islands National Recreation Area','Abundant'),('bost','Boston National Historical Park','Less'),('bowa','Booker T Washington National Monument','Abundant'),('brca','Bryce Canyon National Park','Abundant'),('brcr','Brices Cross Roads National Battlefield Site','Less'),('brvb','Brown v. Board of Education National Historic Site','Less'),('buff','Buffalo National River','Abundant'),('buis','Buck Island Reef National Monument','Less'),('cabr','Cabrillo National Monument','Abundant'),('cach','Canyon de Chelly National Monument','Less'),('cacl','Castle Clinton National Monument','Less'),('caco','Cape Cod National Seashore','Abundant'),('cagr','Casa Grande Ruins National Monument','Less'),('caha','Cape Hatteras National Seashore','Abundant'),('cahi','Capitol Hill Parks','Less'),('cajo','Captain John Smith Chesapeake National Historic Trail','Abundant'),('cakr','Cape Krusenstern National Monument','Abundant'),('cali','California National Historic Trail','Less'),('calo','Cape Lookout National Seashore','Abundant'),('came','Cape Henry Memorial Part of Colonial National Historical Park','Less'),('camo','Castle Mountains National Monument','Less'),('cana','Canaveral National Seashore','Abundant'),('cane','Camp Nelson National Monument','Less'),('cany','Canyonlands National Park','Abundant'),('care','Capitol Reef National Park','Abundant'),('cari','Cane River Creole National Historical Park','Less'),('carl','Carl Sandburg Home National Historic Site','Less'),('casa','Castillo de San Marcos National Monument','Less'),('cato','Catoctin Mountain Park','Abundant'),('cave','Carlsbad Caverns National Park','Abundant'),('cavo','Capulin Volcano National Monument','Abundant'),('cawo','Carter G. Woodson Home National Historic Site','Less'),('cbpo','Chesapeake Bay','Less'),('cebe','Cedar Creek & Belle Grove National Historical Park','Abundant'),('cebr','Cedar Breaks National Monument','Abundant'),('cech','César E. Chávez National Monument','Less'),('cham','Chamizal National Memorial','Abundant'),('chat','Chattahoochee River National Recreation Area','Abundant'),('chch','Chickamauga & Chattanooga National Military Park','Abundant'),('chcu','Chaco Culture National Historical Park','Less'),('chic','Chickasaw National Recreation Area','Abundant'),('chir','Chiricahua National Monument','Less'),('chis','Channel Islands National Park','Abundant'),('choh','Chesapeake & Ohio Canal National Historical Park','Abundant'),('chpi','Charles Pinckney National Historic Site','Abundant'),('chri','Christiansted National Historic Site','Less'),('chsc','Little Rock Central High School National Historic Site','Less'),('chyo','Charles Young Buffalo Soldiers National Monument','Less'),('ciro','City Of Rocks National Reserve','Abundant'),('clba','Clara Barton National Historic Site','Less'),('coga','Constitution Gardens','Less'),('colm','Colorado National Monument','Abundant'),('colo','Colonial National Historical Park','Less'),('colt','Coltsville National Historical Park','Less'),('cong','Congaree National Park','Abundant'),('coro','Coronado National Memorial','Abundant'),('cowp','Cowpens National Battlefield','Less'),('crla','Crater Lake National Park','Abundant'),('crmo','Craters Of The Moon National Monument & Preserve','Abundant'),('cuga','Cumberland Gap National Historical Park','Less'),('cuis','Cumberland Island National Seashore','Less'),('cure','Curecanti National Recreation Area','Abundant'),('cuva','Cuyahoga Valley National Park','Abundant'),('cwdw','Civil War Defenses of Washington','Abundant'),('daav','Dayton Aviation Heritage National Historical Park','Less'),('ddem','Dwight D. Eisenhower Memorial','Less'),('dena','Denali National Park & Preserve','Abundant'),('depo','Devils Postpile National Monument','Abundant'),('deso','De Soto National Memorial','Less'),('deto','Devils Tower National Monument','Abundant'),('deva','Death Valley National Park','Abundant'),('dewa','Delaware Water Gap National Recreation Area','Abundant'),('dino','Dinosaur National Monument','Abundant'),('drto','Dry Tortugas National Park','Abundant'),('ebla','Ebey\'s Landing National Historical Reserve','Abundant'),('edal','Edgar Allan Poe National Historic Site','Less'),('edis','Thomas Edison National Historical Park','Less'),('efmo','Effigy Mounds National Monument','Less'),('eise','Eisenhower National Historic Site','Less'),('elca','El Camino Real de Tierra Adentro National Historic Trail','Less'),('elis','Ellis Island Part of Statue of Liberty National Monument','Less'),('elma','El Malpais National Monument','Abundant'),('elmo','El Morro National Monument','Abundant'),('elro','Eleanor Roosevelt National Historic Site','Less'),('elte','El Camino Real de los Tejas National Historic Trail','Less'),('euon','Eugene O\'Neill National Historic Site','Less'),('ever','Everglades National Park','Abundant'),('feha','Federal Hall National Memorial','Less'),('fiis','Fire Island National Seashore','Abundant'),('fila','First Ladies National Historic Site','Less'),('flfo','Florissant Fossil Beds National Monument','Abundant'),('flni','Flight 93 National Memorial','Less'),('fobo','Fort Bowie National Historic Site','Less'),('fobu','Fossil Butte National Monument','Less'),('foda','Fort Davis National Historic Site','Abundant'),('fodo','Fort Donelson National Battlefield','Less'),('fodu','Fort Dupont Park','Less'),('fofo','Fort Foote Park','Less'),('fofr','Fort Frederica National Monument','Less'),('fola','Fort Laramie National Historic Site','Less'),('fols','Fort Larned National Historic Site','Less'),('foma','Fort Matanzas National Monument','Less'),('fomc','Fort McHenry National Monument and Historic Shrine','Abundant'),('fomr','Fort Monroe National Monument','Abundant'),('fone','Fort Necessity National Battlefield','Abundant'),('fopo','Fort Point National Historic Site','Less'),('fopu','Fort Pulaski National Monument','Abundant'),('fora','Fort Raleigh National Historic Site','Less'),('fosc','Fort Scott National Historic Site','Less'),('fosm','Fort Smith National Historic Site','Less'),('fost','Fort Stanwix National Monument','Abundant'),('fosu','Fort Sumter and Fort Moultrie National Historical Park','Abundant'),('foth','Ford\'s Theatre','Less'),('foun','Fort Union National Monument','Less'),('fous','Fort Union Trading Post National Historic Site','Less'),('fova','Fort Vancouver National Historic Site','Abundant'),('fowa','Fort Washington Park','Less'),('frde','Franklin Delano Roosevelt Memorial','Less'),('frdo','Frederick Douglass National Historic Site','Less'),('frhi','Friendship Hill National Historic Site','Less'),('frla','Frederick Law Olmsted National Historic Site','Less'),('frri','Freedom Riders National Monument','Less'),('frsp','Fredericksburg & Spotsylvania National Military Park','Abundant'),('frst','First State National Historical Park','Abundant'),('gaar','Gates Of The Arctic National Park & Preserve','Abundant'),('gari','Gauley River National Recreation Area','Less'),('gate','Gateway National Recreation Area','Less'),('gegr','General Grant National Memorial','Less'),('gero','George Rogers Clark National Historical Park','Abundant'),('gett','Gettysburg National Military Park','Abundant'),('gewa','George Washington Birthplace National Monument','Abundant'),('gicl','Gila Cliff Dwellings National Monument','Abundant'),('glac','Glacier National Park','Abundant'),('glba','Glacier Bay National Park & Preserve','Abundant'),('glca','Glen Canyon National Recreation Area','Abundant'),('glde','Gloria Dei Church National Historic Site','Less'),('glec','Glen Echo Park','Less'),('goga','Golden Gate National Recreation Area','Abundant'),('gois','Governors Island National Monument','Less'),('gosp','Golden Spike National Historical Park','Abundant'),('grba','Great Basin National Park','Abundant'),('grca','Grand Canyon National Park','Abundant'),('gree','Greenbelt Park','Less'),('greg','Great Egg Harbor River','Abundant'),('grfa','Great Falls Park','Less'),('grko','Grant-Kohrs Ranch National Historic Site','Less'),('grpo','Grand Portage National Monument','Abundant'),('grsa','Great Sand Dunes National Park & Preserve','Abundant'),('grsm','Great Smoky Mountains National Park','Abundant'),('grsp','Green Springs','Less'),('grte','Grand Teton National Park','Abundant'),('guco','Guilford Courthouse National Military Park','Abundant'),('guis','Gulf Islands National Seashore','Abundant'),('gumo','Guadalupe Mountains National Park','Abundant'),('gwca','George Washington Carver National Monument','Abundant'),('gwmp','George Washington Memorial Parkway','Less'),('hafe','Harpers Ferry National Historical Park','Less'),('hafo','Hagerman Fossil Beds National Monument','Abundant'),('hagr','Hamilton Grange National Memorial','Less'),('haha','Harmony Hall','Less'),('hale','Haleakalā National Park','Less'),('hamp','Hampton National Historic Site','Abundant'),('hart','Harriet Tubman National Historical Park','Less'),('hatu','Harriet Tubman Underground Railroad National Historical Park','Less'),('havo','Hawaiʻi Volcanoes National Park','Abundant'),('heho','Herbert Hoover National Historic Site','Abundant'),('hobe','Horseshoe Bend National Military Park','Abundant'),('hocu','Hopewell Culture National Historical Park','Less'),('hofr','Home Of Franklin D Roosevelt National Historic Site','Less'),('hofu','Hopewell Furnace National Historic Site','Abundant'),('home','Homestead National Historical Park','Abundant'),('hono','Honouliuli National Historic Site','Less'),('hosp','Hot Springs National Park','Abundant'),('hove','Hovenweep National Monument','Less'),('hstr','Harry S Truman National Historic Site','Less'),('hutr','Hubbell Trading Post National Historic Site','Less'),('iafl','Ice Age Floods National Geologic Trail','Less'),('iatr','Ice Age National Scenic Trail','Less'),('inde','Independence National Historical Park','Less'),('indu','Indiana Dunes National Park','Abundant'),('inup','Iñupiat Heritage Center','Less'),('isro','Isle Royale National Park','Abundant'),('jaga','James A Garfield National Historic Site','Less'),('jame','Historic Jamestowne Part of Colonial National Historical Park','Less'),('jazz','New Orleans Jazz National Historical Park','Less'),('jeca','Jewel Cave National Monument','Less'),('jeff','Gateway Arch National Park','Abundant'),('jela','Jean Lafitte National Historical Park and Preserve','Abundant'),('jica','Jimmy Carter National Historical Park','Less'),('joda','John Day Fossil Beds National Monument','Less'),('jofi','John Fitzgerald Kennedy National Historic Site','Less'),('jofl','Johnstown Flood National Memorial','Less'),('jomu','John Muir National Historic Site','Less'),('jotr','Joshua Tree National Park','Abundant'),('juba','Juan Bautista de Anza National Historic Trail','Less'),('kaho','Kaloko-Honokōhau National Historical Park','Abundant'),('kala','Kalaupapa National Historical Park','Less'),('katm','Katmai National Park & Preserve','Abundant'),('kaww','Katahdin Woods and Waters National Monument','Abundant'),('keaq','Kenilworth Park & Aquatic Gardens','Abundant'),('kefj','Kenai Fjords National Park','Abundant'),('kemo','Kennesaw Mountain National Battlefield Park','Less'),('kewe','Keweenaw National Historical Park','Abundant'),('kimo','Kings Mountain National Military Park','Less'),('klgo','Klondike Gold Rush National Historical Park','Abundant'),('klse','Klondike Gold Rush - Seattle Unit National Historical Park','Less'),('knri','Knife River Indian Villages National Historic Site','Abundant'),('kova','Kobuk Valley National Park','Abundant'),('kowa','Korean War Veterans Memorial','Less'),('labe','Lava Beds National Monument','Abundant'),('lacl','Lake Clark National Park & Preserve','Abundant'),('lake','Lake Mead National Recreation Area','Abundant'),('lamr','Lake Meredith National Recreation Area','Abundant'),('laro','Lake Roosevelt National Recreation Area','Abundant'),('lavo','Lassen Volcanic National Park','Abundant'),('lecl','Lewis & Clark National Historic Trail','Abundant'),('lewi','Lewis and Clark National Historical Park','Abundant'),('libi','Little Bighorn Battlefield National Monument','Less'),('libo','Lincoln Boyhood National Memorial','Abundant'),('liho','Lincoln Home National Historic Site','Abundant'),('linc','Lincoln Memorial','Less'),('liri','Little River Canyon National Preserve','Abundant'),('lode','Lower Delaware National Wild and Scenic River','Less'),('loea','Lower East Side Tenement Museum National Historic Site','Less'),('long','Longfellow House Washington\'s Headquarters National Historic Site','Less'),('lowe','Lowell National Historical Park','Abundant'),('lyba','LBJ Memorial Grove on the Potomac','Less'),('lyjo','Lyndon B Johnson National Historical Park','Less'),('maac','Maine Acadian Culture','Less'),('mabi','Marsh - Billings - Rockefeller National Historical Park','Abundant'),('maca','Mammoth Cave National Park','Abundant'),('malu','Martin Luther King, Jr. National Historical Park','Less'),('mamc','Mary McLeod Bethune Council House National Historic Site','Less'),('mana','Manassas National Battlefield Park','Less'),('manz','Manzanar National Historic Site','Abundant'),('mapr','Manhattan Project National Historical Park','Less'),('mava','Martin Van Buren National Historic Site','Abundant'),('mawa','Maggie L Walker National Historic Site','Less'),('memy','Medgar and Myrlie Evers Home National Monument','Less'),('meve','Mesa Verde National Park','Abundant'),('miin','Minidoka National Historic Site','Less'),('mima','Minute Man National Historical Park','Less'),('mimi','Minuteman Missile National Historic Site','Less'),('misp','Mill Springs Battlefield National Monument','Less'),('miss','Mississippi National River and Recreation Area','Abundant'),('mlkm','Martin Luther King, Jr. Memorial','Less'),('mnrr','Missouri National Recreational River','Abundant'),('moca','Montezuma Castle National Monument','Abundant'),('mocr','Moores Creek National Battlefield','Abundant'),('moja','Mojave National Preserve','Abundant'),('mono','Monocacy National Battlefield','Abundant'),('mopi','Mormon Pioneer National Historic Trail','Less'),('mora','Mount Rainier National Park','Abundant'),('morr','Morristown National Historical Park','Abundant'),('moru','Mount Rushmore National Memorial','Less'),('muwo','Muir Woods National Monument','Less'),('nabr','Natural Bridges National Monument','Less'),('nace','National Capital Parks-East','Less'),('nama','National Mall and Memorial Parks','Abundant'),('natc','Natchez National Historical Park','Less'),('natr','Natchez Trace Parkway','Abundant'),('natt','Natchez Trace National Scenic Trail','Less'),('nava','Navajo National Monument','Abundant'),('nebe','New Bedford Whaling National Historical Park','Less'),('neen','New England National Scenic Trail','Less'),('nepe','Nez Perce National Historical Park','Abundant'),('neri','New River Gorge National Park and Preserve','Abundant'),('nico','Nicodemus National Historic Site','Less'),('niob','Niobrara National Scenic River','Abundant'),('nisi','Ninety Six National Historic Site','Abundant'),('noat','Noatak National Preserve','Abundant'),('noca','North Cascades National Park','Abundant'),('noco','North Country National Scenic Trail','Abundant'),('npnh','National Parks of New York Harbor','Abundant'),('npsa','National Park of American Samoa','Abundant'),('obed','Obed Wild & Scenic River','Abundant'),('ocmu','Ocmulgee Mounds National Historical Park','Abundant'),('okci','Oklahoma City National Memorial','Less'),('olsp','Old Spanish National Historic Trail','Less'),('olym','Olympic National Park','Abundant'),('orca','Oregon Caves National Monument & Preserve','Abundant'),('oreg','Oregon National Historic Trail','Less'),('orpi','Organ Pipe Cactus National Monument','Abundant'),('ovvi','Overmountain Victory National Historic Trail','Less'),('oxhi','Oxon Cove Park & Oxon Hill Farm','Abundant'),('ozar','Ozark National Scenic Riverways','Abundant'),('paal','Palo Alto Battlefield National Historical Park','Abundant'),('paav','Pennsylvania Avenue','Less'),('pagr','Paterson Great Falls National Historical Park','Less'),('pais','Padre Island National Seashore','Abundant'),('para','Grand Canyon-Parashant National Monument','Abundant'),('peco','Pecos National Historical Park','Abundant'),('pefo','Petrified Forest National Park','Abundant'),('peri','Pea Ridge National Military Park','Abundant'),('pete','Petersburg National Battlefield','Abundant'),('petr','Petroglyph National Monument','Less'),('pevi','Perry\'s Victory & International Peace Memorial','Abundant'),('pine','New Jersey Pinelands National Reserve','Less'),('pinn','Pinnacles National Park','Abundant'),('pipe','Pipestone National Monument','Abundant'),('piro','Pictured Rocks National Lakeshore','Abundant'),('pisc','Piscataway Park','Less'),('pisp','Pipe Spring National Monument','Abundant'),('poch','Port Chicago Naval Magazine National Memorial','Less'),('poex','Pony Express National Historic Trail','Less'),('pohe','Potomac Heritage National Scenic Trail','Abundant'),('popo','Poverty Point National Monument','Less'),('pore','Point Reyes National Seashore','Abundant'),('prsf','Presidio of San Francisco','Less'),('prwi','Prince William Forest Park','Abundant'),('puhe','Puʻukoholā Heiau National Historic Site','Less'),('puho','Puʻuhonua o Hōnaunau National Historical Park','Abundant'),('pull','Pullman National Monument','Less'),('rabr','Rainbow Bridge National Monument','Less'),('redw','Redwood National and State Parks','Abundant'),('reer','Reconstruction Era National Historical Park','Less'),('rich','Richmond National Battlefield Park','Less'),('rigr','Rio Grande Wild & Scenic River','Abundant'),('rira','River Raisin National Battlefield Park','Abundant'),('roca','Roosevelt Campobello International Park','Less'),('rocr','Rock Creek Park','Abundant'),('romo','Rocky Mountain National Park','Abundant'),('rori','Rosie the Riveter WWII Home Front National Historical Park','Less'),('rowi','Roger Williams National Memorial','Less'),('ruca','Russell Cave National Monument','Less'),('saan','San Antonio Missions National Historical Park','Abundant'),('sacn','Saint Croix National Scenic Riverway','Abundant'),('sacr','Saint Croix Island International Historic Site','Less'),('safe','Santa Fe National Historic Trail','Less'),('safr','San Francisco Maritime National Historical Park','Abundant'),('saga','Saint-Gaudens National Historical Park','Abundant'),('sagu','Saguaro National Park','Less'),('sahi','Sagamore Hill National Historic Site','Abundant'),('sair','Saugus Iron Works National Historic Site','Less'),('sajh','San Juan Island National Historical Park','Abundant'),('saju','San Juan National Historic Site','Less'),('sama','Salem Maritime National Historic Site','Less'),('samo','Santa Monica Mountains National Recreation Area','Abundant'),('sand','Sand Creek Massacre National Historic Site','Less'),('sapa','Saint Paul\'s Church National Historic Site','Less'),('sapu','Salinas Pueblo Missions National Monument','Abundant'),('sara','Saratoga National Historical Park','Abundant'),('sari','Salt River Bay National Historical Park and Ecological Preserve','Less'),('scbl','Scotts Bluff National Monument','Less'),('seki','Sequoia & Kings Canyon National Parks','Abundant'),('semo','Selma To Montgomery National Historic Trail','Less'),('shen','Shenandoah National Park','Abundant'),('shil','Shiloh National Military Park','Abundant'),('sitk','Sitka National Historical Park','Abundant'),('slbe','Sleeping Bear Dunes National Lakeshore','Abundant'),('spar','Springfield Armory National Historic Site','Less'),('stea','Steamtown National Historic Site','Less'),('stge','Ste. Geneviève National Historical Park','Less'),('stli','Statue Of Liberty National Monument','Less'),('stri','Stones River National Battlefield','Abundant'),('stsp','Star-Spangled Banner National Historic Trail','Abundant'),('sucr','Sunset Crater Volcano National Monument','Less'),('tapr','Tallgrass Prairie National Preserve','Abundant'),('thco','Thomas Cole National Historic Site','Less'),('this','Theodore Roosevelt Island','Less'),('thje','Thomas Jefferson Memorial','Less'),('thko','Thaddeus Kosciuszko National Memorial','Less'),('thrb','Theodore Roosevelt Birthplace National Historic Site','Less'),('thri','Theodore Roosevelt Inaugural National Historic Site','Less'),('thro','Theodore Roosevelt National Park','Abundant'),('thst','Thomas Stone National Historic Site','Less'),('tica','Timpanogos Cave National Monument','Less'),('timu','Timucuan Ecological & Historic Preserve','Abundant'),('tont','Tonto National Monument','Less'),('tosy','Touro Synagogue National Historic Site','Less'),('trte','Trail Of Tears National Historic Trail','Less'),('tuai','Tuskegee Airmen National Historic Site','Less'),('tuin','Tuskegee Institute National Historic Site','Less'),('tule','Tule Lake National Monument','Less'),('tuma','Tumacácori National Historical Park','Abundant'),('tupe','Tupelo National Battlefield','Less'),('tusk','Tule Springs Fossil Beds National Monument','Abundant'),('tuzi','Tuzigoot National Monument','Less'),('ulsg','Ulysses S Grant National Historic Site','Less'),('upde','Upper Delaware Scenic & Recreational River','Less'),('vafo','Valley Forge National Historical Park','Abundant'),('vall','Valles Caldera National Preserve','Abundant'),('valr','Pearl Harbor National Memorial','Less'),('vama','Vanderbilt Mansion National Historic Site','Less'),('vick','Vicksburg National Military Park','Abundant'),('vicr','Virgin Islands Coral Reef National Monument','Abundant'),('viis','Virgin Islands National Park','Abundant'),('vive','Vietnam Veterans Memorial','Less'),('voya','Voyageurs National Park','Abundant'),('waba','Washita Battlefield National Historic Site','Abundant'),('waca','Walnut Canyon National Monument','Less'),('waco','Waco Mammoth National Monument','Less'),('wamo','Washington Monument','Less'),('wapa','War In The Pacific National Historical Park','Less'),('waro','Washington-Rochambeau Revolutionary Route National Historic Trail','Less'),('wefa','Weir Farm National Historical Park','Abundant'),('whho','President\'s Park (White House)','Less'),('whis','Whiskeytown National Recreation Area','Abundant'),('whmi','Whitman Mission National Historic Site','Abundant'),('whsa','White Sands National Park','Less'),('wica','Wind Cave National Park','Abundant'),('wicl','President William Jefferson Clinton Birthplace Home National Historic Site','Less'),('wicr','Wilson\'s Creek National Battlefield','Abundant'),('wiho','William Howard Taft National Historic Site','Less'),('wing','Wing Luke Museum Affiliated Area','Less'),('wori','Women\'s Rights National Historical Park','Less'),('wotr','Wolf Trap National Park for the Performing Arts','Less'),('wrbr','Wright Brothers National Memorial','Less'),('wrst','Wrangell - St Elias National Park & Preserve','Abundant'),('wupa','Wupatki National Monument','Abundant'),('wwii','World War II Memorial','Less'),('wwim','World War I Memorial','Less'),('yell','Yellowstone National Park','Abundant'),('york','Yorktown Battlefield Part of Colonial National Historical Park','Abundant'),('yose','Yosemite National Park','Abundant'),('yuch','Yukon - Charley Rivers National Preserve','Abundant'),('yuho','Yucca House National Monument','Less'),('zion','Zion National Park','Abundant');
/*!40000 ALTER TABLE `act_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-19  4:15:05
