<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewElements.aspx.cs" Inherits="Fritz.TechEd14Demo._6_Demo.NewElements" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <style>

    .online {
      background-color: green;
      color: white;
    }

    .offline {
      background-color: firebrick;
      color: white;
    }

  </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

      <h3>My Location: <span id="myLocation"></span></h3>

      <h3>Network is: <span id="netStatus"></span></h3>

    </div>
    </form>

  <script>

var geo;
function displayPosition(pos) {

  var locn = document.getElementById("myLocation");
  locn.innerText = "Lat: " + pos.coords.latitude + ", Lon: " + pos.coords.longitude;

}

geo = navigator.geolocation;
if(geo) {
  geo.getCurrentPosition(displayPosition);
}




// Network status
addEventListener("online", online);
addEventListener("offline", online);

function online(event) {

  var el = document.getElementById("netStatus");
  el.className=navigator.onLine ? "online" : "offline";
  el.innerHTML = navigator.onLine ? "Online" : "Offline";

}

online({});


  </script>

</body>
</html>
