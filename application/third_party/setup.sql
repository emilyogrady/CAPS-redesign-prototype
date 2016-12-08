

-- -----------------------------------------------------
-- Table `caps`.`Person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Person` (
  `id` INT(7) NOT NULL,
  `firstName` VARCHAR(32) NOT NULL,
  `lastName` VARCHAR(32) NOT NULL,
  `email` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caps`.`Rank`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Rank` (
  `id` INT(2) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) NOT NULL,
  `order` INT(2) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caps`.`Record_of_Action`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Record_of_Action` (
  `id` INT(5) NOT NULL AUTO_INCREMENT,
  `person` INT(7) NOT NULL,
  `date` DATE NOT NULL,
  `rank` INT(2) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `Rank_idx` (`rank` ASC),
  INDEX `Person_idx` (`person` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caps`.`Professional_Experience`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Professional_Experience` (
  `id` INT(5) NOT NULL AUTO_INCREMENT,
  `person` INT(7) NOT NULL,
  `dateStart` DATE NOT NULL,
  `dateEnd` DATE NULL,
  `title` VARCHAR(64) NOT NULL,
  `company` VARCHAR(128) NOT NULL,
  `description` TEXT NULL,
  PRIMARY KEY (`id`),
  INDEX `Person_idx` (`person` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caps`.`Course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Course` (
  `id` INT(4) NOT NULL AUTO_INCREMENT,
  `dptCode` VARCHAR(45) NOT NULL,
  `number` INT(4) NOT NULL,
  `name` VARCHAR(64) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caps`.`Course_File_Type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Course_File_Type` (
  `id` INT(6) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(128) NOT NULL,
  `description` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caps`.`Semester`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Semester` (
  `semesterCode` VARCHAR(3) NOT NULL,
  `name` VARCHAR(32) NOT NULL,
  `yearOrder` INT(2) NOT NULL,
  `termOrder` INT(2) NOT NULL,
  PRIMARY KEY (`semesterCode`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caps`.`Academic_Term`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Academic_Term` (
  `id` INT(3) NOT NULL AUTO_INCREMENT,
  `year` INT(4) NOT NULL,
  `semester` VARCHAR(3) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `Semester_idx` (`semester` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caps`.`Course_File`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Course_File` (
  `id` INT(6) NOT NULL AUTO_INCREMENT,
  `person` INT(7) NOT NULL,
  `course` INT(4) NOT NULL,
  `fileType` INT(2) NOT NULL,
  `url` VARCHAR(128) NOT NULL,
  `term` INT(3) NOT NULL,
  `description` TEXT NULL,
  PRIMARY KEY (`id`),
  INDEX `File Type_idx` (`fileType` ASC),
  INDEX `Person_idx` (`person` ASC),
  INDEX `Course_idx` (`course` ASC),
  INDEX `Term_idx` (`term` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caps`.`Course_Taught`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Course_Taught` (
  `course` INT(4) NOT NULL,
  `person` INT(7) NOT NULL,
  PRIMARY KEY (`course`, `person`),
  INDEX `Person_idx` (`person` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caps`.`Educational_Background`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Educational_Background` (
  `id` INT(5) NOT NULL AUTO_INCREMENT,
  `person` INT(7) NOT NULL,
  `year` INT(4) NOT NULL,
  `degree` VARCHAR(64) NOT NULL,
  `institution` VARCHAR(128) NOT NULL,
  `capstoneTitle` VARCHAR(128) NULL,
  PRIMARY KEY (`id`),
  INDEX `Person_idx` (`person` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caps`.`Independent_Study`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Independent_Study` (
  `id` INT(6) NOT NULL AUTO_INCREMENT,
  `person` INT(7) NOT NULL,
  `startDate` DATE NOT NULL,
  `endDate` DATE NOT NULL,
  `organization` VARCHAR(128) NULL,
  `description` TEXT NULL,
  PRIMARY KEY (`id`),
  INDEX `Person_idx` (`person` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caps`.`Journal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Journal` (
  `id` INT(6) NOT NULL AUTO_INCREMENT,
  `person` INT(7) NOT NULL,
  `title` VARCHAR(128) NOT NULL,
  `date` DATE NOT NULL,
  `publication` VARCHAR(128) NOT NULL,
  `authors` TEXT NULL,
  PRIMARY KEY (`id`),
  INDEX `Person_idx` (`person` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caps`.`Conference_Paper`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Conference_Paper` (
  `id` INT(6) NOT NULL AUTO_INCREMENT,
  `person` INT(7) NOT NULL,
  `title` VARCHAR(128) NOT NULL,
  `date` DATE NOT NULL,
  `conference` VARCHAR(128) NOT NULL,
  `authors` TEXT NULL,
  PRIMARY KEY (`id`),
  INDEX `Person_idx` (`person` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caps`.`Presentation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Presentation` (
  `id` INT(6) NOT NULL AUTO_INCREMENT,
  `person` INT(7) NOT NULL,
  `title` VARCHAR(128) NOT NULL,
  `date` DATE NOT NULL,
  `event` VARCHAR(128) NOT NULL,
  `authors` TEXT NULL,
  PRIMARY KEY (`id`),
  INDEX `Person_idx` (`person` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caps`.`Book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Book` (
  `id` INT(6) NOT NULL AUTO_INCREMENT,
  `person` INT(7) NOT NULL,
  `title` VARCHAR(128) NOT NULL,
  `date` DATE NOT NULL,
  `publisher` VARCHAR(128) NOT NULL,
  `authors` TEXT NULL,
  PRIMARY KEY (`id`),
  INDEX `Person_idx` (`person` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caps`.`Other_Publication`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Other_Publication` (
  `id` INT(6) NOT NULL AUTO_INCREMENT,
  `person` INT(7) NOT NULL,
  `title` VARCHAR(128) NOT NULL,
  `date` DATE NOT NULL,
  `event` VARCHAR(128) NOT NULL,
  `authors` TEXT NULL,
  PRIMARY KEY (`id`),
  INDEX `Person_idx` (`person` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caps`.`Creative_Work`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Creative_Work` (
  `id` INT(6) NOT NULL AUTO_INCREMENT,
  `person` INT(7) NOT NULL,
  `title` VARCHAR(128) NOT NULL,
  `date` DATE NOT NULL,
  `source` VARCHAR(128) NOT NULL,
  `authors` TEXT NULL,
  `description` TEXT NULL,
  PRIMARY KEY (`id`),
  INDEX `Person_idx` (`person` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `caps`.`Other_Scholarship`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Other_Scholarship` (
  `id` INT(6) NOT NULL AUTO_INCREMENT,
  `person` INT(7) NOT NULL,
  `title` VARCHAR(128) NOT NULL,
  `date` DATE NOT NULL,
  `event` VARCHAR(128) NOT NULL,
  `authors` TEXT NULL,
  PRIMARY KEY (`id`),
  INDEX `Person_idx` (`person` ASC))
ENGINE = InnoDB;