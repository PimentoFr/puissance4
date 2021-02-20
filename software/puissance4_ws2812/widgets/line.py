from puissance4_ws2812.widgets.widget import Widget
from puissance4_ws2812.led.display import Display
import logging

class WidgetLine(Widget):
    drawable = False
    
    def __init__(self, display: Display, x: int, y: int, x2: int, y2: int, r: int, g: int, b: int):
        self.log = logging.getLogger("WidgetLine")
        self.display = display
        self.x = min(x, x2)
        self.y = min(y, y2)
        self.x2 = max(x, x2)
        self.y2 = max(y, y2)
        self.r = r
        self.g = g
        self.b = b
        
        if x != x2 and y != y2:
            self.log.error("{:s} must be a vertical or horizontal line".format(str(self)))
        self.drawable = True
        self.log.info("{:s} instancied".format(str(self)))
        
    def __str__(self):
        return "WidgetLine(x={:d}, y={:d}, x2={:d}, y2={:d}, r={:d}, g={:d}, b={:d})".format(
            self.x,
            self.y,
            self.x2,
            self.y2,
            self.r,
            self.g,
            self.b
        )
    def __repr__(self):
        return self.__str__()
    
    def compute(self):
        pass
            
    def render(self):
        self.log.info("{:s} render".format(str(self)))
        
        if not self.drawable:
            self.log.debug("{:s} is not drawable".format(str(self)))
            return
    
        boxMinX = min(max(self.x, 0), self.display.getMaxSizeX())
        boxMinY = min(max(self.y, 0), self.display.getMaxSizeY())
        boxMaxX = min(max(self.x2, 0), self.display.getMaxSizeX())
        boxMaxY = min(max(self.y2, 0), self.display.getMaxSizeY())
        
        if boxMinX != boxMaxX:
            for _x in range(boxMinX, boxMaxX + 1, 1):
                self.display.setPixelColor(_x, boxMinY, self.r, self.g, self.b, 255)
        else:     
            for _y in range(boxMinY, boxMaxY + 1, 1):
                self.display.setPixelColor(boxMinX, _y, self.r, self.g, self.b, 255)