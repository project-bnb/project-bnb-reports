Questi sono le API del backend! Per fare test si puo' usare postman (leggere postman_test_json.md)

## API base CRUD di appartamenti

Get:
- /api/apartments -> mostra tutti gli appartamenti pubblici disponibili
restituira'
```json
{
      "id": 1,
      "user_id": 2,
      "title": "Appartamento 1",
      "rooms": 2,
      "beds": 4,
      "bathrooms": 3,
      "square_meters": 50,
      "address": "2199 Maryse Street Apt. 883, South Connieberg",
      "latitude": 43.973196,
      "longitude": 32.573761,
      "image": "apartments/default3.jpg",
      "is_visible": 1,
      "created_at": "2024-11-25T01:23:59.000000Z",
      "updated_at": "2024-11-25T01:23:59.000000Z"
    },
```
- /api/apartments/{id} -> mostra i dettagli di un appartamento specifico (solo per URA e UR)
tramite id si mettera'su id l'id dell'appartamento da mostrare
restituira'
```json
{
      "id": 1,
      "user_id": 2,
      "title": "Appartamento 1",
      "rooms": 2,
      "beds": 4,
      "bathrooms": 3,
      "square_meters": 50,
      "address": "2199 Maryse Street Apt. 883, South Connieberg",
      "latitude": 43.973196,
      "longitude": 32.573761,
      "image": "apartments/default3.jpg",
      "is_visible": 1,
      "created_at": "2024-11-25T01:23:59.000000Z",
      "updated_at": "2024-11-25T01:23:59.000000Z"
    },
```

Post:

- /api/apartments -> crea un nuovo appartamento (solo per URA)
necessita di:
```json
{
      "user_id": 2,
      "title": "Appartamento 1",
      "rooms": 2,
      "beds": 4,
      "bathrooms": 3,
      "square_meters": 50,
      "address": "2199 Maryse Street Apt. 883, South Connieberg",
      "latitude": 43.973196,
      "longitude": 32.573761,
      "image": "apartments/default3.jpg",
      "is_visible": 1,
}
```

Put:

- /api/apartments/{id} -> modifica un appartamento specifico (solo per URA)
tramite id si mettera'su id l'id dell'appartamento da modificare
necessita di:
```json
{
      "user_id": 2,
      "title": "Appartamento 1",
      "rooms": 2,
      "beds": 4,
      "bathrooms": 3,
      "square_meters": 50,
      "address": "2199 Maryse Street Apt. 883, South Connieberg",
      "latitude": 43.973196,
      "longitude": 32.573761,
      "image": "apartments/default3.jpg",
      "is_visible": 1,
}
```
Delete:

- /api/apartments/{id} -> cancella un appartamento specifico (solo per URA)
si mettera'su id l'id dell'appartamento da cancellare

## API di laravel Auth

Get:
- /api/user -> mostra i dati dell'utente registrato, inclusi nome, email e ruolo
restituira'
```json
{
  "birth_date": "2024-11-24",
  "email": "ciao@gmail.com",
  "id": 11,
  "name": "asd",
  "surname": "asd"
}
```

Post:
- /login -> effettua il login
necessita di:
```json
{
  "email": "ciao@gmail.com",
  "password": "Sonoswagger123"
}
```
- /register -> effettua la registrazione
necessita di:
```json
{
  "birth_date": "2024-11-24",
  "confirmPassword": "Sonofico123",
  "email": "dimasdah11009@gmail.com",
  "name": "asd",
  "password": "Sonofico123",
  "surname": "asd"
}
```
- /logout -> effettua il logout
semplicemente elimina il token cookie si manda senza bisogno di body, ma si deve attivare dal backend tramite .env

- /email/verification-notification -> invia una notifica di verifica email
necessita di:
```json
{
  "email": "ciao@gmail.com"
}
```
- /reset-password -> resetta la password
necessita di:
```json
{
  "email": "ciao@gmail.com",
  "password": "Sonoswagger123",
  "password_confirmation": "Sonoswagger123",
  "token": "token"
}
```

Get:
- /sanctum/csrf-cookie -> ottiene il token csrf
Get:
- /verify-email/{id}/{hash} -> verifica l'email

## API esterne

- TomTom API per le mappe
- api-ninjas per foto di appartamenti **ANCORA DA CERCARE ALTRO API**