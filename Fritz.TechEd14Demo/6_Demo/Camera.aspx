<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Camera.aspx.cs" Inherits="Fritz.TechEd14Demo._6_Demo.Camera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    


      <video id="video" width="640" height="480" autoplay></video>

<script>

if (navigator.getUserMedia) {

  var player = document.getElementById("video");

  navigator.getUserMedia({video: 'true'}, function(stream) {
    video.src = stream;
    video.play();
  });

} else if (navigator.webkitGetUserMedia) { 
  navigator.webkitGetUserMedia({ video: true}, function (stream) {
    video.src = window.webkitURL.createObjectURL(stream);
    video.play();
  });
} else {
  console.log("Wrong");
}

</script>

    </div>
    </form>
</body>
</html>
