window.addEventListener('load', () => {
    if(document.querySelector('#canvas')){
        canvasinit();
    }
});
window.addEventListener('resize', () => {
    if(document.querySelector('#canvas')){
        canvasinit();
    }
});

function canvasinit() {
    canvas = document.getElementById('canvas');
    contextCanvas = canvas.getContext('2d');
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
    canvas.addEventListener('mousemove', canvasMouseMove, false);

    mouse = {
        x: 0,
        y: 0
    }
    particleHolder = [];
    x = 100;
    y = 100;
    angle = 0.2;
    radius = 50;
    particleCount = 900;
    color = [
        'rgba(106, 210, 231, 0.5)',
        'rgba(250, 104, 0, 0.5)',
        'rgba(243, 132, 48, 0.5)',
        'rgba(198, 244, 98, 0.5)',
        'rgba(255, 107, 107, 0.5)',
        'rgba(250, 204, 0, 0.5)',
        'rgba(232, 125, 2, 0.5)',
        'rgba(202, 232, 105, 0.5)',
        'rgba(0, 169, 199, 0.5)',
        'rgba(63, 191, 202, 0.5)',
        'rgba(174, 225, 55, 0.5)',
        'rgba(208, 231, 80, 0.5)',
        'rgba(78, 189, 233, 0.5)',
        'rgba(37, 174, 228, 0.5)',
        'rgba(249, 214, 36, 0.5)',
        'rgba(240, 122, 25, 0.5)',
        'rgba(239, 169, 46, 0.5)',
        'rgba(136, 197, 38, 0.5)',
        'rgba(190, 242, 2, 0.5)',
        'rgba(250, 42, 0, 0.5)',
        'rgba(0, 178, 255, 0.5)',
        'rgba(127, 255, 36, 0.5)',
        'rgba(194, 255, 102, 0.5)',
        'rgba(200, 255, 0, 0.5)',
        'rgba(19, 205, 75, 0.5)',
        'rgba(126, 112, 215, 0.5)',
        'rgba(187, 233, 7, 0.5)',
        'rgba(192, 250, 56, 0.5)',
        'rgba(170, 255, 0, 0.5)',
        'rgba(255, 170, 0, 0.5)',
        'rgba(255, 0, 170, 0.5)',
        'rgba(170, 0, 255, 0.5)',
        'rgba(0, 170, 255, 0.5)',
        'rgba(255, 255, 0, 0.5)'
    ];


    function canvasMouseMove(event) {
        mouse.x = event.pageX - canvas.offsetLeft;
        mouse.y = event.pageY - canvas.offsetLeft;
    }
    for (i = 0; i < particleCount; i++) {
        particleHolder.push(new generateParticles());
    }

    function generateParticles() {
        this.x = Math.random() * canvas.width;
        this.y = Math.random() * canvas.height;
        this.color = color[Math.floor(Math.random() * color.length)];
        this.rad = Math.floor(Math.random() * 5);
    }

    function canvasvibrate() {

        // contextCanvas.fillStyle = (window.localStorage.themeColor == 'dark') ? '#212121' : 'white';
        if (localStorage.getItem('themeColor') == 'white') {
            contextCanvas.fillStyle = 'white';
        }
        if(localStorage.getItem('themeColor') == 'false') {
            contextCanvas.fillStyle = 'white';
        }
        if(localStorage.getItem('themeColor') == true) {
            contextCanvas.fillStyle = '#212121';
        }
        if(localStorage.getItem('themeColor') == 'dark') {
            contextCanvas.fillStyle = '#212121';
        }

        

        contextCanvas.fillRect(0, 0, canvas.width, canvas.height);
        for (var j = 0; j < particleHolder.length; j++) {
            var p = particleHolder[j];
            var distanceX = p.x - mouse.x;
            var distanceY = p.y - mouse.y;
            particleDistance = Math.sqrt(distanceX * distanceX + distanceY * distanceY);

            particleMouse = Math.max(Math.min(75 / (particleDistance / p.rad), 10), 0.1);
            contextCanvas.beginPath();
            contextCanvas.fillStyle = p.color;
            contextCanvas.arc(p.x + Math.sin(angle++ * Math.cos(radius++)),
                p.y - Math.cos(angle-- * Math.sin(radius--)),
				p.rad * particleMouse, Math.PI * 2,
				false);
            contextCanvas.fill();
        }
	}
	

	setInterval(canvasvibrate, 50);
	
};
