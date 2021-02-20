// Vanilla js
var ns = 'http://www.w3.org/2000/svg'
var div = null;
var svg = null;
//Settings
x_pane = 2;
y_pane = 4;
direction='down_left';
x_max = x_pane * 3;
y_max = y_pane * 3;
ball_size = 50;
showDotIndex = true;
//List of dots
dots=[];
drawing = false
initialised = false
function ColorForLong(l) {
    return Color((l >> 16) & 255, (l>>8) & 255, l & 255);
}

function Color(r,g,b) {
    return "#" + ('0' + (r & 0xFF).toString(16)).slice(-2)
        + ('0' + (g & 0xFF).toString(16)).slice(-2)
        + ('0' + (b & 0xFF).toString(16)).slice(-2)
}

function buildPlates(x_pane, y_pane, direction) {
    var dx = 0, dy = 0;
    var sx = 0, sy = 0;
    var first_x = false;
    div = document.getElementById('drawing') 
    svg = document.createElementNS(ns, 'svg')
    svg.setAttributeNS(null, 'width', '100%')
    svg.setAttributeNS(null, 'height', '700px')
    div.appendChild(svg)
    switch(direction) {
        case 0:
            dx = -1;
            dy = 1;
            sx = (x_pane - 1);
            sy = 0;
            first_x = false;
            break;
        default:
            console.error("Bad direction, get: ", direction);
            return;
    }
    console.log("draw plates", x_pane, y_pane, direction)
    for(i = 0; i < x_pane*y_pane; i++) {
        if(!first_x && i > 0 && (i%y_pane) == 0) {
            sx += dx;
            dy = -dy;
            sy += dy;
        }
        if(first_x && i > 0 && (i%x_pane) == 0) {
            sy += dy;
            dx = -dx;
            sx += sx;
        }
        buildPlate(i*9, sx*3+1, sy*3+1);
        if(first_x) {
            sx += dx;
        } else {
            sy += dy;
        }
    }
}

/**
 * This function create LED dot for a tile
 * 
 * @param {*} n First index of the first led of this new tile
 * @param {*} x_offset X offset for the first led position
 * @param {*} y_offset Y offset for the first led position
 */
function buildPlate(n, x_offset, y_offset) {
    for(var y = 0; y < 3; y++) {
        for(var x = 0; x < 3; x++) {
            dotId = n + x + y*3;
            c = document.createElementNS(ns, 'circle')
            c.setAttributeNS(null, 'r', ball_size/2)
            c.setAttributeNS(null, 'fill', '#DAA')
            c.setAttributeNS(null, 'cx', (x_offset + x)*ball_size)
            c.setAttributeNS(null, 'cy', (y_offset + y)*ball_size)
            svg.appendChild(c)
            dots.push(c);
            if(showDotIndex) {
                t = document.createElementNS(ns, 'text');
                t.setAttributeNS(null, "x", (x_offset + x)*ball_size);
                t.setAttributeNS(null, "y", (y_offset + y)*ball_size);
                t.setAttributeNS(null, "font-size", 8);
                t.setAttributeNS(null, "fill", "#FFF")
                t.setAttributeNS(null, "text-anchor", "middle")
                t.textContent = ''+dotId;
                svg.appendChild(t)

            }
        }
    }
}

function updatePlatesWithBuffer(buffer) {
    for(var i = 0; i < x_max * y_max; i++) {
        c = ColorForLong(buffer[i])
        dots[i].setAttributeNS(null, 'fill', c)  
    }
}

//buildPlates(x_pane, y_pane, direction)

var websocket = new WebSocket("ws://192.168.1.74:6789/");
websocket.onmessage = function (event) {
data = JSON.parse(event.data);
console.log("data", data)
switch (data.type) {
    case 'screen':
        if (drawing == false && initialised == true) {
            drawing = true;
            updatePlatesWithBuffer(data.screen)
            drawing = false;
        } else {
            console.log("Already drawing")
        }
        break;
    case 'settings':
        initialised = false
        dots = []
        if(svg != null) {
            div.removeChild(svg)   
        }
        svg = null
        buildPlates(data.settings.col, data.settings.row, data.settings.direction)
        initialised = true
        break;
    default:
        console.error(
            "unsupported event", data);
}
};