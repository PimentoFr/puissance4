// Vanilla js
// Vanilla js
var ns = 'http://www.w3.org/2000/svg'
var div = document.getElementById('drawing') 
var svg = document.createElementNS(ns, 'svg')
svg.setAttributeNS(null, 'width', '100%')
svg.setAttributeNS(null, 'height', '500px')
div.appendChild(svg)
//svg.appendChild(rect)

x_max = 21
y_max = 21
ball_size = 20
dots = []


for(y = 0; y < y_max; y++) {
    for(x = 0; x< x_max; x++) {
        c = document.createElementNS(ns, 'circle')
        c.setAttributeNS(null, 'r', ball_size/2)
        c.setAttributeNS(null, 'fill', '#f06')
        c.setAttributeNS(null, 'cx', (x+1)*ball_size)
        c.setAttributeNS(null, 'cy', (y+1)*ball_size)
        svg.appendChild(c)
        dots.push(c)
    }
}

function Color(r,g,b) {
    return "#" + (r % 256).toString(16) + (g % 256).toString(16) + (b % 256).toString(16)
}

function wheel(pos) {
    if (pos < 85) {
        return Color(pos * 3, 255 - pos * 3, 0)
    }
    else if(pos < 170) {
        pos -= 85
        return Color(255 - pos * 3, 0, pos * 3)
    }
    else {
        pos -= 170
        return Color(0, pos * 3, 255 - pos * 3)
    }
}

function sleep (time) {
    return new Promise((resolve) => setTimeout(resolve, time));
}

function ite_rainbow() {
}

const timer = ms => new Promise(res => setTimeout(res, ms))
async function rainbow(iterations) {
    for(j=0; j < 256 * iterations; j++) {
        for(i = 0; i < x_max * y_max; i++)
        {
            dots[i].setAttributeNS(null, 'fill', wheel((i+j) & 255))
        }
        await timer(30); // then the created Promise can be awaited
    }
}


async function load () { // We need to wrap the loop into an async function for this to work
 
  for (var i = 0; i < 3; i++) {
    console.log(i);
    await timer(3000); // then the created Promise can be awaited
  }
}

//load();



rainbow(10);

// rect.setAttributeNS(null, 'width', 100)
// rect.setAttributeNS(null, 'height', 100)
// rect.setAttributeNS(null, 'fill', '#f06')







var minus = document.querySelector('.minus'),
plus = document.querySelector('.plus'),
value = document.querySelector('.value'),
users = document.querySelector('.users'),
websocket = new WebSocket("ws://192.168.1.74:6789/");
minus.onclick = function (event) {
websocket.send(JSON.stringify({action: 'minus'}));
}
plus.onclick = function (event) {
websocket.send(JSON.stringify({action: 'plus'}));
}
websocket.onmessage = function (event) {
data = JSON.parse(event.data);
switch (data.type) {
    case 'state':
        value.textContent = data.value;
        break;
    case 'users':
        users.textContent = (
            data.count.toString() + " user" +
            (data.count == 1 ? "" : "s"));
        break;
    default:
        console.error(
            "unsupported event", data);
}
};