-- =========================================================
-- West Bengal Government Welfare Schemes Database Backup
-- Table: wb_schemes
-- =========================================================

DROP TABLE IF EXISTS wb_schemes CASCADE;

CREATE TABLE wb_schemes (
    id SERIAL PRIMARY KEY,
    scheme_name VARCHAR(255) NOT NULL,
    scheme_code VARCHAR(100) NOT NULL,
    min_age INTEGER DEFAULT 0,
    max_age INTEGER DEFAULT 120,
    max_income INTEGER DEFAULT 9999999,
    gender VARCHAR(50) DEFAULT 'Any',
    caste VARCHAR(50) DEFAULT 'Any',
    marital_status VARCHAR(50) DEFAULT 'Any',
    occupation VARCHAR(100) DEFAULT 'Any',
    residence_area VARCHAR(100) DEFAULT 'west bengal',
    school_type VARCHAR(100) DEFAULT 'Any',
    education VARCHAR(50) DEFAULT 'Any'
);

-- Seed Data: Popular West Bengal Government Schemes
INSERT INTO wb_schemes 
(scheme_name, scheme_code, min_age, max_age, max_income, gender, caste, marital_status, occupation, residence_area, school_type, education)
VALUES
('Kanyashree Prakalpa (K1)', 'KANYA_K1', 13, 18, 120000, 'Female', 'Any', 'Unmarried', 'Student', 'west bengal', 'Government', '8'),
('Kanyashree Prakalpa (K2)', 'KANYA_K2', 18, 19, 120000, 'Female', 'Any', 'Unmarried', 'Student', 'west bengal', 'Any', '12'),
('Taruner Swapna (Free Tablet Scheme)', 'TARUN_SWAPNA', 16, 20, 9999999, 'Any', 'Any', 'Any', 'Student', 'west bengal', 'Government', '12'),
('Sikshashree Scholarship', 'SIKSHASHREE', 10, 18, 250000, 'Any', 'SC', 'Any', 'Student', 'west bengal', 'Government', '8'),
('Rupashree Prakalpa', 'RUPASHREE', 18, 45, 150000, 'Female', 'Any', 'Unmarried', 'Any', 'west bengal', 'Any', 'Any'),
('Lakshmir Bhandar (General/OBC)', 'LAKSHMI_GEN', 25, 60, 9999999, 'Female', 'General', 'Any', 'women', 'west bengal', 'Any', 'Any'),
('Lakshmir Bhandar (SC/ST)', 'LAKSHMI_SCST', 25, 60, 9999999, 'Female', 'SC', 'Any', 'women', 'west bengal', 'Any', 'Any'),
('Krishak Bandhu Scheme', 'KRISHAK_BANDHU', 18, 60, 9999999, 'Any', 'Any', 'Any', 'Farmer', 'west bengal', 'Any', 'Any'),
('Yuvashree (Employment Assistance)', 'YUVASHREE', 18, 45, 9999999, 'Any', 'Any', 'Any', 'Student', 'west bengal', 'Any', '8'),
('Jai Bangla Pension Scheme (Taposili Bandhu)', 'JAI_BANGLA_SC', 60, 120, 9999999, 'Any', 'SC', 'Any', 'Any', 'west bengal', 'Any', 'Any'),
('Bangla Shasya Bima (BSB)', 'BSB_CROP', 18, 75, 9999999, 'Any', 'Any', 'Any', 'Farmer', 'west bengal', 'Any', 'Any'),
('Swasthya Sathi', 'SWASTHYA_SATHI', 0, 120, 9999999, 'Any', 'Any', 'Any', 'Any', 'west bengal', 'Any', 'Any'),
('Bhabishyat Credit Card Scheme (BCCS)', 'WB_BCCS', 18, 45, 9999999, 'Any', 'Any', 'Any', 'Any', 'west bengal', 'Any', '10');
