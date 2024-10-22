$("#other").css("color", "blue");
$("legend").css("color", "red");
$("#target").css("color", "purple");

let keyPressCount = 0;

$("#target").on("keypress", () => {
  keyPressCount++;
  $("#other").html(
    `Handler for keypress called <br> The number of key press count is : ${keyPressCount} `
  );
});

$("#target").on("keypress", (event) => {
  // event.which == '65'
  // $("#disp").html(`The typed value is : ${event.which}`);

  if (event.which >= "65" && event.which <= "90") {
    $("#disp").html(`The typed value is Capital Alphabet.`);
  } else if (event.which >= "97" && event.which <= "122") {
    $("#disp").html(`The typed value is small Alphabet.`);
  } else if (event.which >= "48" && event.which <= "57") {
    $("#disp").html(`The typed value is Number.`);
  } else {
    $("#disp").html(`Special character or symbols.`);
  }
});
