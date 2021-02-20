from puissance4_ws2812.widgets.widget import Widget
from puissance4_ws2812.fonts.font import Font
from puissance4_ws2812.led.display import Display
import logging

class WidgetText(Widget):
    def __init__(self, display: Display, string: str, x: int, y: int, font: Font, r: int, g: int, b: int):
        self.log = logging.getLogger("WidgetText")
        self.string = string
        self.x = x
        self.y = y
        self.font = font
        self.r = r
        self.g = g
        self.b = b
        self.log.info("{:s} instancied".format(str(self)))
        
    def __str__(self):
        return "WidgetText(str={:s}, x={:d}, y={:d}, font={:s}, r={:d}, g={:d}, b={:d})".format(
            self.string,
            self.x,
            self.y,
            "FONT",
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
        _x = self.x
        _y = self.y
        _r = self.r
        _g = self.g
        _b = self.b
        
        for c in self.string:
            _x = _x + self.font.printChar(c, _x, _y, _r, _g, _b)