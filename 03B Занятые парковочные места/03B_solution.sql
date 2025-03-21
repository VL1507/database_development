-- database: example.db
SELECT
    CarNumber,
    ParkingNumber
From
    Cars
    JOIN ParkingPlaces
    JOIN CarsParkings ON Cars.ID == CarsParkings.CarID
    AND ParkingPlaces.ID == CarsParkings.ParkingID
