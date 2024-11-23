// filter by rooms
http://192.168.1.101:9000/api/apartments/filter?rooms=2

// filter by rooms, beds, services, sponsorships
/api/apartments/filter?rooms=3&beds=2&services[]=1&services[]=2&sponsorships[]=1

// mock json
json test
{
    "user_id": 3,
    "title": "Appdwawdaawd con vista",
    "rooms": 3,
    "beds": 2,
    "bathrooms": 1,
    "square_meters": 75,
    "address": "Via Roma, 123, Roma",
    "latitude": 41.9028,
    "longitude": 12.4964,
    "image": "url_dell_immagine.jpg",
    "is_visible": true,
    "services": [2, 3],  
    "sponsorships": [1, 2] 
}

// filter by service_id
http://192.168.1.101:9000/api/apartments?service_id=1