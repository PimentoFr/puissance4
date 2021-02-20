from puissance4_ws2812.widgets.widget import Widget
from puissance4_ws2812.led.display import Display
import logging

class WidgetCircle(Widget):
    def __init__(self, display: Display, x: int, y: int, diam: int, r: int, g: int, b: int):
        self.log = logging.getLogger("WidgetCircle")
        self.display = display
        self.x = x
        self.y = y
        self.width = width
        self.height = height
        self.r = r
        self.g = g
        self.b = b
        self.log.info("{:s} instancied".format(str(self)))
        
    def __str__(self):
        return "WidgetRectFill(x={:d}, y={:d}, width={:d}, height={:d}, r={:d}, g={:d}, b={:d})".format(
            self.x,
            self.y,
            self.width,
            self.height,
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
        
        boxMinX = min(max(self.x, 0), self.display.getMaxSizeX())
        boxMinY = min(max(self.y, 0), self.display.getMaxSizeY())
        boxMaxX = min(max(self.x + self.width, 0), self.display.getMaxSizeX())
        boxMaxY = min(max(self.y + self.height, 0), self.display.getMaxSizeY())
        
        for _x in range(boxMinX, boxMaxX, 1):
            for _y in range(boxMinY, boxMaxY, 1):
                self.display.setPixelColor(_x, _y, self.r, self.g, self.b, 255)