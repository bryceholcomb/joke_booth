$(document).ready(function() {
  $("#funny").children("input").change(function() {
    var jokeId  = $(".joke").attr("id");
    alert('funny');
    $(this).prop("checked", false);
    voteUp(jokeId);
  });

  $("#not-funny").children("input").change(function() {
    alert('not-funny')
    $(this).prop("checked", false);
  });
});

function voteUp(jokeId) {
  $.ajax({
    url: "/jokes/" + jokeId,
    data: { vote: "up" },
    success: function(joke) {
      alert("success");
    }
  });
}
