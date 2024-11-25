# API TEST MOCK DATA

Ciao per debuggare uso tanto postman, qui sotto alcuni json di esempio che possono essere usati per testare le API.

## Data Apartments:
for POST, PUTapartments
```json
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
```


## AUTH
for GET:
http://192.168.1.101:9000/api/user

for POST:
http://192.168.1.101:9000/register
http://192.168.1.101:9000/login
http://192.168.1.101:9000/logout
use this json for everything:
```json
{
    "name": "John",
    "surname": "Doe",
    "email": "john.doe@example.com",
    "birth_date": "1990-05-15",
    "password": "SwaggerFigo123"
}
```