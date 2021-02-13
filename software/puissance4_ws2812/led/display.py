from rpi_ws281x import Color
from puissance4_ws2812.led.ws2812 import WS2812, WS2812_Stub
import logging
import math
import time
class Direction():
    DOWN_LEFT = 0
    DOWN_RIGHT = 1
    UP_LEFT = 2
    UP_RIGHT = 3
    RIGHT_DOWN = 4
    RIGHT_UP = 5
    LEFT_DOWN = 6
    LEFT_UP = 7

class Display():
    LEDS_BY_PANE = 9
    
    def __init__(self,
                 col_pane: int,
                 row_pane: int,
                 direction: Direction,
                 pin: int = 18, 
                 freq: int = 800000,
                 dma: int = 10,
                 brightness: int = 127,
                 invert:bool=False,
                 channel:int = 0,
                 stub:bool = False):
        
        self.col_pane = col_pane
        self.row_pane = row_pane
        self.count_led = self.col_pane * self.row_pane * self.LEDS_BY_PANE
        self.direction = direction
        self.pin = pin
        self.freq = freq
        self.dma = dma
        self.brightness = brightness
        self.invert = invert
        self.channel = channel
        
        if stub:
            self.strip = WS2812_Stub(self.count_led, self.pin, self.freq, self.dma, self.invert, self.brightness, self.channel)
        else:
            self.strip = WS2812(self.count_led, self.pin, self.freq, self.dma, self.invert, self.brightness, self.channel)
        
        self.log = logging.getLogger('Display')
        self.log.info("Display set %d x %d".format(self.col_pane, self.row_pane))

    def begin(self):
        self.strip.begin()

    def show(self):
        self.strip.show()
        
    def _calculateLedIndexFromPosition(self, x, y):
        index = -1
        if(self.direction == Direction.DOWN_RIGHT):
            dir_down =  True if (math.floor(x / 3) % 2 == 0) else False
            col_pane_offset = math.floor(x/3) * self.row_pane * self.LEDS_BY_PANE
            if dir_down:
                index = (3 * y) + (x % 3) + col_pane_offset
            else:
                index = (x % 3) + (y % 3)*3 + (self.row_pane - 1 - math.floor(y / 3)) * self.LEDS_BY_PANE + col_pane_offset
        elif(self.direction == Direction.DOWN_LEFT):
            print("x:{:d}, y{:d}".format(x, y))
            dir_down = True if (math.floor(x / 3) % 2 == self.col_pane % 2) else False
            print("dir {:d}".format(dir_down))
            col_pane_offset = (self.col_pane - 1 - math.floor(x/3)) * self.row_pane * self.LEDS_BY_PANE
            print("offset {:d}".format(col_pane_offset))
            if dir_down:
                index = (x % 3) + (y % 3) * 3 + (self.row_pane - 1 - math.floor(y/3)) * self.LEDS_BY_PANE + col_pane_offset
            else:
                index = 3 * y + (x % 3) + col_pane_offset
        else:
            self.log.error("This is not yet IMPLEMENTED");
            
        return index
        
        
    def setPixelColor(self, 
                      x: int,
                      y: int,
                      red: int,
                      green: int,
                      blue: int,
                      white: int):
        start = time.time_ns()
        n = self._calculateLedIndexFromPosition(x, y)
        print("Compute {:d}".format(time.time_ns() - start))
        self.strip.setPixelColor(n, Color(red, green, blue, white))
    
    def render(self):
        self.strip.show()