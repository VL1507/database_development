-- database: example.db
SELECT
    CarNumber,
    ParkingNumber
FROM
    Cars
    JOIN ParkingPlaces
    JOIN CarsParkings ON Cars.ID == CarsParkings.CarID
    AND ParkingPlaces.ID == CarsParkings.ParkingID
