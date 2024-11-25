Task presa da una issue che ho scritto su github:  del frontend da linkare #63

# TOMTOM | Library

## Preambolo
Ho letto un po di documentazione, eventaulmente non e' necessario sapere tutto tutto della documentazione, quindi usateli solo se c'e' bisogno di genere abbiamo le milestone contengono cio' che serve, ma ho capito un pochino come funziona la libreria, prima di cominciare lascio dei link utili:
- Documentazione TOMTOM piu specifico maps sdk web js [Link per la documentazione](https://developer.tomtom.com/maps-sdk-web-js/overview/product-information/introduction)
- video su youtube mini tutorial 2 minuti [Link per il video](https://www.youtube.com/watch?v=njJdDjdwSIE&t=2si)
- StackOverflow, da cliccare il link del tipo che ha risposto [Link per Overflow](https://stackoverflow.com/questions/70748194/how-can-i-add-marker-tomtom-in-vuejso)
- TOMTOM forum  Qui usano la CDN, ma tanto noi useremo la libreria alla fine e' uguale [Mini tutorial](https://developer.tomtom.com/blog/build-different/displaying-multiple-map-locations-vue-and-tomtom-web-sdk/)

## Description
creare un componente che permette di visualizzare una mappa dell'appartamento con dei marker

Milestone 1:
- installare la libreria
```bash
npm i @tomtom-international/web-sdk-maps
```
- creare un file .env e inserire la key si trovera nella descrizione del gruppo whatsapp
```
VUE_APP_TOMTOM_KEY=latuakey
```

Milestone 2:
- creare un componente che permette di visualizzare una mappa
# codice esempio
eventualmente qui vi passo un codice esempio e ovviamente da adattare
```vue
<template>
  <div class="map" id="map" ref="mapRef"></div>
</template>

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

        container: this..mapRef,
        center: [-120.72217631449985, 42.73919549715691],
        zoom: 10,
      })

      new tt.Marker().setLngLat([-120.72217631449985, 42.73919549715691]).addTo(map)

      this.map = Object.freeze(map)
    },
  },
}
```
!!!ATTENZIONE!!!
- la key e' da sostituire con quella che si trova nella descrizione del gruppo whatsapp,UTILIZZARE .env per passare la key  

permette di visualizzare una mappa
- creare un marker, da cambiare la posizione con latitude e longitude ricevute get api/apartments, come gestire la view passate tramite props o store latitude e longitude
```vue
        container: this..mapRef,
        center: [-120.72217631449985, 42.73919549715691],
        zoom: 10,
      })

      new tt.Marker().setLngLat([-120.72217631449985, 42.73919549715691]).addTo(map)

      this.map = Object.freeze(map)
```

da php io ho le table cosi, quindi da considerare che sono float, questa informazione e' in caso di dubbi

```php
       ->float('latitude', 10, 6)->nullable();
            ->float('longitude', 10, 6)->nullable();
```