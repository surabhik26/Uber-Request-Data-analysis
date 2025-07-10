--1) view sample data
SELECT TOP 10 * FROM [uber dataset];
-----------------------------------

--2) total ride requests
SELECT COUNT(*) AS Total_Requests FROM [uber dataset];
-----------------------------------

--3) count of each ride status
SELECT Status, COUNT(*) AS request_Count FROM [uber dataset] GROUP BY Status;
-----------------------------------

--4) requests by pickup point
SELECT [Pickup_point], COUNT(*) AS Total_Requests FROM [uber dataset] GROUP BY [Pickup_point];
-----------------------------------

--5) hourly ride requests
SELECT Request_Hour, COUNT(*) AS Request_Count FROM [uber dataset] GROUP BY Request_Hour ORDER BY Request_Hour;
-----------------------------------

--6) cancelled rides by location
SELECT Pickup_point, COUNT(*) AS Cancelled_Trips FROM [uber dataset] WHERE Status='Cancelled' GROUP BY Pickup_point;
-----------------------------------

--7) Completed trips and average duration
SELECT COUNT(*) AS Completed_Trips,AVG([Trip_Duration_minutes]) AS Avg_Duration FROM [uber dataset] WHERE Status='Trip Completed';
-----------------------------------

--8) top 5 busiest hours
SELECT TOP 5 Request_Hour, COUNT(*) AS Request_Count FROM [uber dataset] GROUP BY Request_Hour ORDER BY Request_Count DESC;
------------------------------------

--9) Status-wise breakdown for each pickup point
SELECT Pickup_point, Status, COUNT(*) AS Total FROM [uber dataset]GROUP BY Pickup_point,Status ORDER BY Pickup_point, Status;
------------------------------------

--10) longest 5 trips completed
SELECT TOP 5 * FROM [uber dataset] WHERE Status = 'Trip Completed' ORDER BY [Trip_Duration_minutes] DESC;
------------------------------------

--11) Day-Wise Cancellation Rate
SELECT Request_Day, COUNT(CASE WHEN Status = 'Cancelled' THEN 1 END) * 100.0 / COUNT(*) AS Cancellation_Percentage FROM [uber dataset] 
GROUP BY Request_Day ORDER BY Cancellation_Percentage DESC;
-------------------------------------

--12) Drivers with Highest Number of Completed Trips
SELECT [Driver_id], COUNT(*) AS Completed_Trips FROM [uber dataset] WHERE Status = 'Trip Completed' AND [Driver_id] IS NOT NULL 
GROUP BY [Driver_id] ORDER BY Completed_Trips DESC;
-------------------------------------

--13) Requests That Failed (Cancelled or No Cars)
SELECT * FROM [uber dataset] WHERE Status IN ('Cancelled', 'No Cars Available');
-------------------------------------

--14) Repeated Requests from Same Timestamp
SELECT [Request_timestamp], COUNT(*) AS Duplicate_Count FROM [uber dataset] GROUP BY [Request_timestamp] HAVING COUNT(*) > 1;
-------------------------------------

--15) Find number of requests from 'City'
SELECT COUNT(*) AS City_Requests FROM [uber dataset]  WHERE [Pickup_point] = 'City';
-------------------------------------

--16) Show all trips completed by driver 285
SELECT * FROM [uber dataset] WHERE [Driver_id] = 285 AND Status = 'Trip Completed';
-------------------------------------

--17) Show all requests between 6 AM and 9 AM
SELECT * FROM [uber dataset] WHERE Request_Hour BETWEEN 6 AND 9;
-------------------------------------

--18) Find all requests made on Monday
SELECT * FROM [uber dataset] WHERE Request_Day = 'Monday';
-------------------------------------

--19) Show requests where Trip Duration > 60 minutes
SELECT * FROM [uber dataset] WHERE [Trip_Duration_minutes] > 60;
-------------------------------------

--20) Count total requests for each day
SELECT Request_Day, COUNT(*) AS Total_Requests FROM [uber dataset] GROUP BY Request_Day;
-------------------------------------

--21) Get all trips that don’t have a driver assigned
SELECT * FROM [uber dataset] WHERE [Driver_id] IS NULL;
-------------------------------------

--22) Get total completed trips on each weekday
SELECT Request_Day, COUNT(*) AS Completed_Trips FROM [uber dataset] WHERE Status = 'Trip Completed' GROUP BY Request_Day;
-------------------------------------

--23) Show top 3 hours with least number of requests
SELECT TOP 3 Request_Hour, COUNT(*) AS Request_Count FROM [uber dataset] GROUP BY Request_Hour ORDER BY Request_Count ASC;
-------------------------------------

--24) Get all requests where status is not 'Trip Completed'
SELECT * FROM [uber dataset] WHERE Status != 'Trip Completed';
-------------------------------------

--25) Show all requests that happened after 6 PM
SELECT * FROM [uber dataset] WHERE Request_Hour >= 18;
-------------------------------------

--26) List distinct pickup points
SELECT DISTINCT [Pickup_point] FROM [uber dataset];
-------------------------------------

--27) Count trips with missing drop timestamps
SELECT COUNT(*) AS Missing_Drop_Times FROM [uber dataset] WHERE [Drop_timestamp] IS NULL;
-------------------------------------

--28) Display all requests sorted by Trip Duration (descending)
SELECT * FROM [uber dataset] ORDER BY [Trip_Duration_minutes] DESC;
-------------------------------------

--29) Count requests for each combination of Day and Pickup Point
SELECT Request_Day, [Pickup_point], COUNT(*) AS Total_Requests FROM [uber dataset] GROUP BY Request_Day, [Pickup_point] ORDER BY Request_Day, [Pickup_point];
--------------------------------------

-- 30) Calculate average trip duration by pickup point
SELECT [Pickup_point], AVG([Trip_Duration_minutes]) AS Avg_Trip_Duration FROM [uber dataset] WHERE [Trip_Duration_minutes] IS NOT NULL
GROUP BY [Pickup_point];
--------------------------------------

--31) Show requests where Trip Duration is NULL (not completed)
SELECT * FROM [uber dataset] WHERE [Trip_Duration_minutes] IS NULL;
--------------------------------------



























