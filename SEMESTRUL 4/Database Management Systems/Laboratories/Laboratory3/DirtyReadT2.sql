USE Booking;
GO

--SOLUTION
--SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SELECT * FROM OwnerBooking 
WHERE id = 5;