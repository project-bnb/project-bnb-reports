### Gestione dei Dati in Base al Ruolo

Abbiamo tre tipi di utenti:

- **UR (Utente Registrato)**:
  - **GET**: Può visualizzare i dati.
  - **POST**: Può inviare messaggi ad altri utenti. I messaggi vengono gestiti dal backend e salvati nel database delle chat.

![image](https://github.com/user-attachments/assets/d68546bf-f440-4976-870e-1983e609607a)

- **URA (Utente Registrato con Appartamento)**:
  - **GET**: Può visualizzare i propri dati personali e quelli dell'appartamento. Il backend invia i dati solo all'utente registrato con l'appartamento.
  - **POST**: Può creare o modificare appartamenti. Il backend consente queste operazioni solo se l'utente che le richiede è lo stesso associato all'appartamento.
  - **PUT**: Può modificare i dati dell'appartamento. Il backend esegue la modifica solo se l'utente è lo stesso associato all'appartamento.
  - **DELETE**: Può cancellare i dati dell'appartamento. Il backend esegue la cancellazione solo se l'utente è lo stesso associato all'appartamento.

![image](https://github.com/user-attachments/assets/10792adb-d1fb-4d2a-82af-c047cff83398)

- **UI (Utente Interessato)**:
  - **GET**: Può visualizzare solo i dati pubblici. Il backend invia solo i dati pubblici.
  - **POST**: Può inviare messaggi senza registrazione, gli arriva per email risposta e confermazione.

![image](https://github.com/user-attachments/assets/a07597fd-7dac-41b9-af94-19fe231e57cb)