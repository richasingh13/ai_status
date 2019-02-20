var placeSearch, autocomplete;
var componentForm = {
  locality: 'long_name',
  administrative_area_level_1: 'long_name',
  country: 'long_name'
};

function initAutocomplete() {
  autocomplete= new google.maps.places.Autocomplete(document.getElementById('autocomplete'), { types: [ 'geocode' ] });
  google.maps.event.addListener(autocomplete, 'place_changed', function() {
    fillInAddress();
  });

  autocomplete2 = new google.maps.places.Autocomplete(document.getElementById('autocomplete2'), { types: [ 'geocode' ] });
  google.maps.event.addListener(autocomplete2, 'place_changed', function() {
    fillInAddress();
  });
  
 /* autocomplete.addListener('place_changed', fillInAddress);
 autocomplete2.addListener('place_changed', fillInAddress2);*/
}

function fillInAddress() {
  var place = autocomplete.getPlace();
/*
  $("#latitude").val(place.geometry.location.lat());
  $("#longitude").val(place.geometry.location.lng());*/

  for (var component in componentForm) {
    document.getElementById(component).value = '';
    document.getElementById(component).disabled = false;
  }

  for (var i = 0; i < place.address_components.length; i++) {
    var addressType = place.address_components[i].types[0];
    if (componentForm[addressType]) {
      var val = place.address_components[i][componentForm[addressType]];
      document.getElementById(addressType).value = val;
    }
  }
}

function geolocate() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var geolocation = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      };
      var circle = new google.maps.Circle({
        center: geolocation,
        radius: position.coords.accuracy
      });
      autocomplete.setBounds(circle.getBounds());
    });
  }
}
