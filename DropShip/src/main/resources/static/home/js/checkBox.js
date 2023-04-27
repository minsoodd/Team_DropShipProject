var cookieName = "item";

$(document).ready(function() {
  // Check previously checked items
  checkChkCookie(cookieName, "/", "chkValue");

  // Check if there are any checked items and update the button text accordingly
  var checkedCnt = getChkCookieCnt(cookieName, "/", "chkValue");
  if (checkedCnt > 0) {
    $("#btn").text("Select (" + checkedCnt + "Save)");
  } else {
    $("#btn").text("Nothing selected");
  }

  // Listen for checkbox changes and update the cookie accordingly
  $("input[type=checkbox]").change(function() {
    var chkValue = $("input[type=checkbox]:checked").map(function() {
      return $(this).val();
    }).get().join("/");
    setCookie(cookieName, chkValue, null);
    $("#" + basketId).val(chkValue);
  });
});

function checkAll(flag) {
  if (flag) {
    $("input[type=checkbox]").prop("checked", true).change();
  } else {
    $("input[type=checkbox]").prop("checked", false).change();
    deleteCookie(cookieName);
  }
}
