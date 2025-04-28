DROP TABLE IF EXISTS pandemic.infectious_cases_norm;
DROP TABLE IF EXISTS pandemic.location;

CREATE TABLE pandemic.location (
  location_id INT            NOT NULL AUTO_INCREMENT,
  entity      VARCHAR(255)   NOT NULL,
  code        VARCHAR(20)    NOT NULL,
  PRIMARY KEY (location_id),
  UNIQUE KEY uq_location (entity, code)
) ENGINE=InnoDB;

CREATE TABLE pandemic.infectious_cases_norm (
  location_id           INT     NOT NULL,
  year                  YEAR    NOT NULL,
  number_yaws           INT     NULL,
  polio_cases           INT     NULL,
  cases_guinea_worm     INT     NULL,
  number_rabies         DOUBLE  NULL,
  number_malaria        DOUBLE  NULL,
  number_hiv            DOUBLE  NULL,
  number_tuberculosis   DOUBLE  NULL,
  number_smallpox       INT     NULL,
  number_cholera_cases  INT     NULL,
  PRIMARY KEY (location_id, year),
  CONSTRAINT fk_icn_location
    FOREIGN KEY (location_id) REFERENCES pandemic.location (location_id)
) ENGINE=InnoDB;

INSERT INTO pandemic.location (entity, code)
SELECT DISTINCT
  Entity,
  Code
FROM pandemic.infectious_cases;

INSERT INTO pandemic.infectious_cases_norm (
  location_id, year,
  number_yaws, polio_cases, cases_guinea_worm,
  number_rabies, number_malaria, number_hiv,
  number_tuberculosis, number_smallpox, number_cholera_cases
)
SELECT
  l.location_id,
  CAST(ic.Year AS YEAR),
  CAST(NULLIF(ic.Number_yaws,         '') AS SIGNED),
  CAST(NULLIF(ic.polio_cases,         '') AS SIGNED),
  CAST(NULLIF(ic.cases_guinea_worm,   '') AS SIGNED),
  CAST(NULLIF(ic.Number_rabies,       '') AS DOUBLE),
  CAST(NULLIF(ic.Number_malaria,      '') AS DOUBLE),
  CAST(NULLIF(ic.Number_hiv,          '') AS DOUBLE),
  CAST(NULLIF(ic.Number_tuberculosis, '') AS DOUBLE),
  CAST(NULLIF(ic.Number_smallpox,     '') AS SIGNED),
  CAST(NULLIF(ic.Number_cholera_cases,'') AS SIGNED)
FROM pandemic.infectious_cases AS ic
JOIN pandemic.location AS l
  ON ic.Entity = l.entity
 AND ic.Code   = l.code;