import "bootstrap";

$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})


const color = document.querySelectorAll("div.color-button")

color.forEach(function(color) {
  color.addEventListener("click", (event) => {
    document.getElementById("color_preference").value = event.target.classList[3];
  });
});
