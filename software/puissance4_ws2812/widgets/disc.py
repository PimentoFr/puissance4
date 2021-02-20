from puissance4_ws2812.widgets.widget import Widget
from puissance4_ws2812.led.display import Display
import logging

class WidgetDisc(Widget):
    def __init__(self, display: Display, x: int, y: int, radius: int, r: int, g: int, b: int):
        self.log = logging.getLogger("WidgetCircle")
        self.display = display
        self.x = x
        self.y = y
        self.radius = abs(radius)
        self.r = r
        self.g = g
        self.b = b
        self.log.info("{:s} instancied".format(str(self)))
        
    def __str__(self):
        return "WidgetDisc(x={:d}, y={:d}, radius={:d}, r={:d}, g={:d}, b={:d})".format(
            self.x,
            self.y,
            self.radius,
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
        
        boxMinX = min(max(self.x - self.radius, 0), self.display.getMaxSizeX())
        boxMinY = min(max(self.y - self.radius, 0), self.display.getMaxSizeY())
        boxMaxX = min(max(self.x + self.radius, 0), self.display.getMaxSizeX())
        boxMaxY = min(max(self.y + self.radius, 0), self.display.getMaxSizeY())
        
        print("boxMinX", boxMinX, "boxMinY", boxMinY)
        print("boxMaxX", boxMaxX, "boxMaxY", boxMaxY)
        
        for _x in range(boxMinX, boxMaxX + 1, 1):
            for _y in range(boxMinY, boxMaxY + 1, 1):
                __x = _x - self.x
                __y = _y - self.y
                dist = ((__x*__x) + (__y*__y))
                print(__x, __y, dist, self.radius*self.radius)
                if (dist <= (self.radius * self.radius)):
                    self.display.setPixelColor(_x, _y, self.r, self.g, self.b, 255)
