import GMaps from 'gmaps/gmaps.js';

const maps = document.querySelectorAll('.map');
if (maps) { // don't try to build a map if there's no div#map to inject in
  maps.forEach((mapElement) => {
    const map = new GMaps({ el: mapElement, lat: 0, lng: 0 });
    const marker = JSON.parse(mapElement.dataset.markers);
    console.log(marker)
    map.addMarker(marker);
    map.setCenter(marker.lat, marker.lng);
    map.setZoom(14);
  });

}
