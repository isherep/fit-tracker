-- CREATE DATABASE fitness_tracker;

USE fitness_tracker;

CREATE TABLE USER_LOGIN (

PersonID     int     PRIMARY KEY,

LastName     varchar(30),

FirstName     varchar(30),

Email     varchar(50)    NOT NULL UNIQUE,

User_Name     varchar(50)     NOT NULL

);



CREATE TABLE DAILY_ACTIVITY_UPDATE (

UserID     int   REFERENCES FitnessTracker (PersonID),

user_weight     int,
user_calIntake    int,
user_calBurned int,

user_workout_type ENUM ('running','biking','eliptical','walking','weights')
);

CREATE TABLE CUSTOMER_METRICS(
  CustomerID   int REFERENCES fitness_tracker(UserID),
  Weight  int,
  Calories_Intake   int,
  Calories_Burned  int,
  Workout_Type    char(25),
  Activity_Level  char(25),
  Workout_Length    int,
  Hours_Slept   int);
