
-- Ropes Type Table
CREATE TABLE selected_rope_type(
    selectedRopeTypeId INTEGER PRIMARY KEY NOT NULL,
    construction TEXT NOT NULL,
    core TEXT NOT NULL,
    type TEXT NOT NULL
);

-- MS Ropes Rate Table
CREATE TABLE ropes_rate(
    ropeId INTEGER PRIMARY KEY NOT NULL,
    diameter TEXT NOT NULL,
    rate REAL NOT NULL,
    selectedRopeTypeId INTEGER NOT NULL
);

-- Slings Rate Table
CREATE TABLE slings_rate(
    slingsId INTEGER PRIMARY KEY NOT NULL,
    secondMeterRate REAL NOT NULL,
    doubleFerrule REAL NOT NULL,
    ropeId INTEGER NOT NULL
);

CREATE TABLE excel_data_temp(
    type TEXT NOT NULL,
    core TEXT NOT NULL,
    construction TEXT NOT NULL,
    diameter TEXT NOT NULL,
    rate REAL NOT NULL,
    secondMeterRate REAL NOT NULL,
    doubleFerrule REAL NOT NULL
);

CREATE TABLE final_wires(
    serialNo INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    originalPrice REAL NOT NULL,
    discount REAL NOT NULL,
    orderID TEXT NOT NULL,
    totalMeters INTEGER NOT NULL,
    wireTitle TEXT NOT NULL,
    wireDetails TEXT NOT NULL
);

CREATE TABLE final_wires(
    orderID TEXT PRIMARY KEY NOT NULL,
);

