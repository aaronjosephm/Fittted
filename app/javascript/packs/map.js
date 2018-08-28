import GMaps from 'gmaps/gmaps.js';

const maps = document.querySelectorAll('.map');
if (maps) { // don't try to build a map if there's no div#map to inject in
  maps.forEach((mapElement) => {
    const map = new GMaps({ el: mapElement, lat: 0, lng: 0 });
    const origin = "5476 Bourret Ave, Montreal, QC H3X 1J5";
    const marker = JSON.parse(mapElement.dataset.markers);
    console.log(marker)
    map.addMarker(marker);
    map.setCenter(marker.lat, marker.lng);
    map.drawRoute({
      origin: [45.485910, -73.640790],
      destination: [marker.lat, marker.lng],
      travelMode: 'driving',
      strokeColor: '#1F8DD6',
      strokeOpacity: 0.6,
      strokeWeight: 6
    });
    map.setZoom(14);
  });

}
