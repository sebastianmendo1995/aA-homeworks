document.addEventListener("DOMContentLoaded", function(){
    const canvas = document.getElementById("mycanvas");
    canvas.width = 500;
    canvas.height = 500;
    const ctx = canvas.getContext('2d');

    // Fill with color 
    ctx.fillStyle = 'red';
    // void ctx.fillRect(x, y, width, height);
    ctx.fillRect(20, 10, 500, 500);

    // starts a new path by emptying the list of sub-paths. 
    // Call this method when you want to create a new path.
    ctx.beginPath();

    // void ctx.arc(x, y, radius, startAngle, endAngle[, anticlockwise]);
    ctx.arc(100, 100, 20, 0, 2 * Math.PI, true)

    ctx.strokeStyle = 'purple';
    ctx.lineWidth = 100;
    ctx.stroke();
    ctx.fillStyle = 'orange';
    ctx.fill();

});

