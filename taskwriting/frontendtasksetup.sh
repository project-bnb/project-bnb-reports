# FRONTEND task setup
# https://github.com/project-bnb/BoolBnB-front
ORGANIZATION="project-bnb"
REPO="BoolBnB-front"

create_issue() {
 
  local title="TOMTOM | Library"
  local description=$(cat <<EOF
# TOMTOM | Library

## Preambolo
Ho letto un po' di documentazione; eventualmente non e' necessario sapere tutto della documentazione, quindi usateli solo se c'e' bisogno. Abbiamo le milestone che contengono cio' che serve, ma ho capito un pochino come funziona la libreria. Prima di cominciare, lascio dei link utili:
- **Documentazione TOMTOM**: [Link per la documentazione](https://developer.tomtom.com/maps-sdk-web-js/overview/product-information/introduction)
- **Video su YouTube**: [Link per il video](https://www.youtube.com/watch?v=njJdDjdwSIE&t=2si)
- **StackOverflow**: [Link per Overflow](https://stackoverflow.com/questions/70748194/how-can-i-add-marker-tomtom-in-vuejso)
- **TOMTOM Forum**: [Mini tutorial](https://developer.tomtom.com/blog/build-different/displaying-multiple-map-locations-vue-and-tomtom-web-sdk/) (Qui usano la CDN, ma noi useremo la libreria; alla fine e' uguale)

## Description
Creare un componente che permette di visualizzare una mappa dell'appartamento con dei marker.

### Milestone 1:
- Installare la libreria:
  ```bash
  npm i @tomtom-international/web-sdk-maps
  ```
- Creare un file `.env` e inserire la key che si trovera' nella descrizione del gruppo WhatsApp:
  ```bash
  VUE_APP_TOMTOM_KEY=latuakey
  ```

### Milestone 2:
- Creare un componente che permette di visualizzare una mappa.
  
  **Codice esempio**: eventualmente qui vi passo un codice esempio e ovviamente da adattare.
  ```vue
  <script>
  import tt from '@tomtom-international/web-sdk-maps'

  export default {
    data() {
      return {
        map: null,
      }
    },
    mounted() {
      this.initializeMap()
    },
    methods: {
      initializeMap() {
        const map = tt.map({
          // ⛔️ Please use your own API key from Tomtom Developer Portal.
          key: 'latuakey',

          container: this.$refs.mapRef,
          center: [-120.72217631449985, 42.73919549715691],
          zoom: 10,
        })

        new tt.Marker().setLngLat([-120.72217631449985, 42.73919549715691]).addTo(map)

        this.map = Object.freeze(map)
      },
    },
  }
  </script>
  ```

!!!ATTENZIONE!!!
- La key e' da sostituire con quella che si trova nella descrizione del gruppo WhatsApp. **UTILIZZARE .env per passare la key.**

Permette di visualizzare una mappa:
- Creare un marker, da cambiare la posizione con latitude e longitude ricevute da `get api/apartments`, come gestire la view passate tramite props o store latitude e longitude.
  ```vue
  container: this.$refs.mapRef,
  center: [-120.72217631449985, 42.73919549715691],
  zoom: 10,
  ```

Da PHP io ho le tabelle cosi', quindi da considerare che sono float; questa informazione e' in caso di dubbi:

EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"
}

while true; do
  echo "crea la issue? (s/n)"
  read -r choice
  if [ "$choice" = "s" ]; then
    create_issue
  else
    echo "Uscita dallo script."
    break
  fi
done
