USE bellabeat;

CREATE Table If NOT EXISTs minuteMETsNarrow
(
    Id Varchar(50),
    ActivityMinute DATETIME,
    METs int
    );
    
LOAD DATA INFILE 'minuteMETsNarrow_merged.csv' INTO Table minuteMETsNarrow
FIELDS terminated by ','
Ignore 1 Lines
(Id, @ActivityMinute, METs)
SET ActivityMinute = STR_TO_DATE(@ActivityMinute, '%c/%e/%Y %h:%i:%s %p');

CREATE Table If NOT EXISTs minuteStepsNarrow
(
    Id Varchar(50),
    ActivityMinute DATETIME,
    Steps int
    );
    
LOAD DATA INFILE 'minuteStepsNarrow_merged.csv' INTO Table minuteStepsNarrow
FIELDS terminated by ','
Ignore 1 Lines
(Id, @ActivityMinute, Steps)
SET ActivityMinute = STR_TO_DATE(@ActivityMinute, '%c/%e/%Y %h:%i:%s %p');

CREATE Table If NOT EXISTs minuteCaloriesNarrow
(
    Id Varchar(50),
    ActivityMinute DATETIME,
    Calories int
    );

LOAD DATA INFILE 'minuteCaloriesNarrow_merged.csv' INTO Table minuteCaloriesNarrow
FIELDS terminated by ','
Ignore 1 Lines
(Id, @ActivityMinute, Calories)
SET ActivityMinute = STR_TO_DATE(@ActivityMinute, '%c/%e/%Y %h:%i:%s %p');

CREATE Table If NOT EXISTs minuteIntensitiesNarrow
(
    Id Varchar(50),
    ActivityMinute DATETIME,
    Intensity int
    );
    
LOAD DATA INFILE 'minuteIntensitiesNarrow_merged.csv' INTO Table minuteIntensitiesNarrow
FIELDS terminated by ','
Ignore 1 Lines
(Id, @ActivityMinute, Intensity)
SET ActivityMinute = STR_TO_DATE(@ActivityMinute, '%c/%e/%Y %h:%i:%s %p');

CREATE Table If NOT EXISTs heartrate_seconds
(
    Id Varchar(50),
    Date_Time DATETIME,
    Value_heart int
    );
    
LOAD DATA INFILE 'heartrate_seconds_merged.csv' INTO Table heartrate_seconds
FIELDS terminated by ','
Ignore 1 Lines
(Id, @Date_Time, Value_heart)
SET Date_Time = STR_TO_DATE(@ActivityMinute, '%c/%e/%Y %h:%i:%s %p');

SELECT 
Id,
TRIM(SUBSTR(ActivityMinute, 1, instr(ActivityMinute,' '))) AS Date,
TRIM(SUBSTR(ActivityMinute, instr(ActivityMinute,' '))) AS Time, METs
FROM minuteMETsNarrow;
