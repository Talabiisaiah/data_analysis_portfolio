CREATE DATABASE American_Ninja_Warrior_Obstacle_History;
USE American_Ninja_Warrior_Obstacle_History;
-- The table was imported

-- 1. Most Frequently Used Obstacles
SELECT obstacle_Name, COUNT(*) AS usage_count
FROM american_ninja_warrior_obstacle_history
GROUP BY obstacle_Name
ORDER BY usage_count DESC;

-- 2. Top Obstacles per Stage
SELECT Round_or_Stage, Obstacle_Name, COUNT(*) AS count 
FROM american_ninja_warrior_obstacle_history
GROUP BY Round_or_Stage, Obstacle_Name
ORDER BY count	DESC;

-- 3. Unique Obstacles by Season
SELECT Season, COUNT(DISTINCT Obstacle_Name) AS unique_obstacles
FROM american_ninja_warrior_obstacle_history
GROUP BY Season
ORDER BY Season;

-- 4. Changes in Obstacle Usage Over Time
SELECT Season, Obstacle_Name, COUNT(*) AS times_used
FROM american_ninja_warrior_obstacle_history
GROUP BY Season, Obstacle_Name
ORDER BY  Season;

-- 5. Number of Obstacles Per Course
SELECT Season, Location, Round_or_Stage, COUNT(*) AS total_obstacles
FROM american_ninja_warrior_obstacle_history
GROUP BY Season, Location, Round_or_Stage
ORDER BY Season, Location, Round_or_Stage;