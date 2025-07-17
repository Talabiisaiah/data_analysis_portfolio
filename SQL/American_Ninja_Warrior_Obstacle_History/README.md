**🧗 American Ninja Warrior Obstacle History - SQL Analysis**

This project contains SQL queries that analyze obstacle usage patterns in the **American Ninja Warrior** competition across different seasons, stages, and locations.

**📊 Project Overview**

The dataset (pre-imported into the database) was gotten from data.world and it consists of historical obstacle course data from the show. This analysis aims to uncover insights such as:

- Which obstacles appear most frequently?
- How obstacle usage varies by stage and season.
- How many obstacles are used per course setup.

**🧱 Database & Table**

Database: `American_Ninja_Warrior_Obstacle_History`  
Table: `american_ninja_warrior_obstacle_history`

**Expected columns in the table:**
- `Season`
- `Location`
- `Round_or_Stage`
- `Obstacle_Name`
- `Obstacle_Order` (optional but useful for sequence-based queries)


**📌 SQL Queries Included**
CREATE DATABASE American_Ninja_Warrior_Obstacle_History;
USE American_Ninja_Warrior_Obstacle_History;
-- The table was imported

-- **1. Most Frequently Used Obstacles (Finds the obstacles with the highest total appearances across all courses).**
SELECT obstacle_Name, COUNT(*) AS usage_count
FROM american_ninja_warrior_obstacle_history
GROUP BY obstacle_Name
ORDER BY usage_count DESC;

-- **2. Top Obstacles per Stage (Breaks down obstacle popularity by course stage).**
SELECT Round_or_Stage, Obstacle_Name, COUNT(*) AS count 
FROM american_ninja_warrior_obstacle_history
GROUP BY Round_or_Stage, Obstacle_Name
ORDER BY count	DESC;

-- **3. Unique Obstacles by Season (Counts how many unique obstacles appeared in each season).**
SELECT Season, COUNT(DISTINCT Obstacle_Name) AS unique_obstacles
FROM american_ninja_warrior_obstacle_history
GROUP BY Season
ORDER BY Season;

-- **4. Changes in Obstacle Usage Over Time (Tracks how obstacle usage trends change from one season to another).**
SELECT Season, Obstacle_Name, COUNT(*) AS times_used
FROM american_ninja_warrior_obstacle_history
GROUP BY Season, Obstacle_Name
ORDER BY  Season;

-- **5. Number of Obstacles Per Course (Shows the number of obstacles in each course setup, grouped by season, location, and stage).**
SELECT Season, Location, Round_or_Stage, COUNT(*) AS total_obstacles
FROM american_ninja_warrior_obstacle_history
GROUP BY Season, Location, Round_or_Stage
ORDER BY Season, Location, Round_or_Stage;


