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


document.getElementById("continue").addEventListener("click", (event) => {
  document.getElementById("color-form").classList.add("hide")
  document.getElementById("body-type-form").classList.remove("hide")
});
