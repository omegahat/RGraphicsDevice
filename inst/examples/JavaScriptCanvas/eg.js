function drawLines() {
    var canvas = document.getElementById('tutorial');
  
    if(canvas.getContext) {
	var ctx = canvas.getContext('2d');

	ctx.fillStyle = "rgb(0, 200,0)";
        ctx.fillRect (10, 10, 55, 50);

        ctx.fillStyle = "rgba(0, 0, 200, 0.5)";
        ctx.fillRect (30, 30, 55, 50);

        ctx.fillStyle = "rgba(0, 0, 0, 0)";
        ctx.beginPath();
        ctx.moveTo(0, 100);
        ctx.lineTo(300, 100);
	ctx.stroke();
    }
}
