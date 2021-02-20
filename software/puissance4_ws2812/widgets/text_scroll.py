from puissance4_ws2812.widgets.widget import Widget
from puissance4_ws2812.fonts.font import Font
from puissance4_ws2812.led.display import Display
import logging
import time
import math

class WidgetTextScrollDirection():
    RIGHT_TO_LEFT = 1
    LEFT_TO_RIGHT = 2


class WidgetTextScrollStates():
    SCROLLING = 1
    WAITING_OUT_SCREEN = 2

class WidgetTextScroll(Widget):
    counter = 0
    start = 0.0
    lastTick = 0.0
    nextTickPeriod = 0.0
    drawable = False
    
    def __init__(self, display: Display, string: str, x: int, y: int, width:int, height:int, font: Font, r: int, g: int, b: int, tick:float, direction: WidgetTextScrollDirection):
        self.log = logging.getLogger("WidgetTextScroll")
        self.display = display
        self.string = string
        self.x = x  #Scroll Box position
        self.y = y  #Scroll Box position
        self.height = height
        self.width = width
        self.font = font
        self.r = r
        self.g = g
        self.b = b
        self.tick = tick
        self.direction = direction
        self.counter = 0
        self.start = time.time()
        self.lastTick = self.start
        self.nextTickPeriod = self.tick
        self.state = WidgetTextScrollStates.SCROLLING
    
        self.stringBox = self.font.getStringBox(self.string)
        print("stringBox", self.stringBox)
        #Temporary position
        self._virtual_x = self.x #Scrolled Text virtual position
        self._virtual_y = self.y #Scrolled Text virtual position
        self.resetScrollText()
        self.drawable = True
        print("vx", self._virtual_x, "vy", self._virtual_y)
        self.log.info("{:s} instancied".format(str(self)))
        
    def __str__(self):
        return "WidgetTextScroll(str={:s}, x={:d}, y={:d}, width={:d}, height={:d} font={:s}, r={:d}, g={:d}, b={:d}, tick={:f})".format(
            self.string,
            self.x,
            self.y,
            self.width,
            self.height,
            "FONT",
            self.r,
            self.g,
            self.b,
            self.tick
        )
    
    def __repr__(self):
        return self.__str__()
    
    def isOutScreen(self, _x, _y):
        (w, h) = self.stringBox
        return ((_x + w) < self.x or _x > (self.x + self.width) or
            (_y + h) < self.y or _y > (self.y + self.height))
        
    def resetScrollText(self):
        (w, _) = self.stringBox
        if self.direction == WidgetTextScrollDirection.LEFT_TO_RIGHT:
            self._virtual_x = self.x - w # vx = x + BoxString.width
        else:
            self._virtual_x = self.x + self.width + 1   #vx = x + width + 1
        self._virtual_y = self.y
        
    def _computeScrollX(self, increment = 1):
        if self.direction == WidgetTextScrollDirection.LEFT_TO_RIGHT:
            self._virtual_x = self._virtual_x + increment
        else:
            self._virtual_x = self._virtual_x - increment
        
    def compute(self):
        elapsedTime = time.time() - self.lastTick
        #Check if a new tick is required
        if elapsedTime >= self.nextTickPeriod:
            print("New tick")
            self.lastTick = time.time()
            if self.state == WidgetTextScrollStates.SCROLLING:
                print("Scrolling")
                self._computeScrollX(math.floor(elapsedTime / self.tick))
                if self.isOutScreen(self._virtual_x, self._virtual_y):
                    self.state = WidgetTextScrollStates.WAITING_OUT_SCREEN
                    self.nextTickPeriod = 10 * self.tick
            elif self.state == WidgetTextScrollStates.WAITING_OUT_SCREEN:
                print("Waiting out screen")
                self.state = WidgetTextScrollStates.SCROLLING
                self.nextTickPeriod = self.tick
                self.resetScrollText()
            
    def render(self):
        self.log.info("{:s} render".format(str(self)))
        if not self.drawable:
            return
        _x = self._virtual_x
        _y = self._virtual_y
        _r = self.r
        _g = self.g
        _b = self.b
        delta = 0
        lastCharWidth = 0
        print("_x", _x, "_y", _y)
        
        for c in self.string:
            #width_left = 8 #min(max(self.width - (_x - self.x), 0), self.width)
            offsetX = _x - self.x
            lastCharWidth = self.font.printCharWithBox(c, self.x, self.y, self.width, self.height, _r, _g, _b, offsetX, 0)
            # if lastCharWidth == 0:
            #     break
            _x = _x + lastCharWidth
            if self.isOutScreen(_x, _y):
                break
            