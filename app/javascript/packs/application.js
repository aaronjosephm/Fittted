import "bootstrap";

$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})


const colors = document.querySelectorAll("div.color-button")

colors.forEach(function(color) {
  color.addEventListener("click", (event) => {
    document.getElementById("color_preference").value = event.target.classList[3];

    colors.forEach(function(color) {
      color.classList.remove("highlight");

    });
    event.target.classList.add("highlight");
  });
});


document.getElementById("continue").addEventListener("click", (event) => {
  document.getElementById("color-form").classList.add("hide")
  document.getElementById("body-type-form").classList.remove("hide")
});

const bodies = document.querySelectorAll("div.body-type-select")

bodies.forEach(function(body) {
  body.addEventListener("click", (event) => {
    document.getElementById("body_type").value = event.target.classList[1];
    bodies.forEach(function(body) {
      body.classList.remove("highlight-body");
    });
    event.target.classList.add("highlight-body");
  });
});
