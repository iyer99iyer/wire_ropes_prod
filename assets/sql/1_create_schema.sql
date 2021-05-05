
-- Ropes Type Table
CREATE TABLE ropes_types(
    id INTEGER PRIMARY KEY,
    construction TEXT NON NULL,
    core TEXT NON NULL,
    type TEXT NON NULL
);

-- MS Ropes Rate Table
CREATE TABLE wire_ropes(
    rateId INTEGER PRIMARY KEY,
    mm TEXT NON NULL,
    rate TEXT NON NULL,
    id INTEGER NON NULL
);

-- Slings Rate Table
CREATE TABLE slings(
    slingsId INTEGER PRIMARY KEY,
    id INTEGER NOT NULL,
    mm TEXT NON NULL,
    rate TEXT NON NULL,
    mm2 TEXT NON NULL,
    doubleF TEXT NON NULL
);


--static final _typeTable = 'msRopesTypes';
--  static final _rateTable = 'msRopes';
--
--  static final _slingsTable = 'slings';
--
--  static final column2ndMM = 'mm2';
--  static final columnDoubleF = 'doubleF';
--
--  static final columnType = 'type';
--  static final columnCore = 'core';
--  static final columnConst = 'const';
--
--  static final columnId = 'id';
--  static final columnRateId = 'rateId';
--  static final columnSlingsId = 'slingsId';
--
--  static final columnMM = 'mm';
--  static final columnPrice = 'rate';