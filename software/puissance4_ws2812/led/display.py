from rpi_ws281x import Color
from puissance4_ws2812.led.ws2812 import WS2812, WS2812_Stub, WS2812_WebSocket
from puissance4_ws2812.led.direction import Direction
import logging
import math
import time

class DisplayStub():
    ONLY_HARDWARE = 1
    ONLY_STUB = 2
    HARDWARE_AND_STUB = 3

class Display():
    LEDS_BY_COL = 3
    LEDS_BY_ROW = 3
    LEDS_BY_PANE = LEDS_BY_COL * LEDS_BY_ROW
    
    begun = False
    strip = None
    
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
                 stub: DisplayStub = DisplayStub.ONLY_HARDWARE):
        
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
        
        if stub == DisplayStub.ONLY_STUB:
            self.strip = WS2812_Stub(self.col_pane, self.row_pane, self.direction, self.count_led, self.pin, self.freq, self.dma, self.invert, self.brightness, self.channel)
        elif stub == DisplayStub.HARDWARE_AND_STUB:
            self.strip = WS2812_WebSocket(self.col_pane, self.row_pane, self.direction, self.count_led, self.pin, self.freq, self.dma, self.invert, self.brightness, self.channel)
        else:
            self.strip = WS2812(self.count_led, self.pin, self.freq, self.dma, self.invert, self.brightness, self.channel)
        
        self.log = logging.getLogger('Display')
        self.log.info("Display set {:d} x {:d}".format(self.col_pane, self.row_pane))

    def begin(self):
        self.strip.begin()
        self.begun = True
        
    def show(self):
        if not self.begun:
            raise Exception("Display not begun")
        self.strip.show()
        
    def getStrip(self):
        return self.strip
        
    def getMaxSizeX(self):
        return self.col_pane * Display.LEDS_BY_COL

    def getMaxSizeY(self):
        return self.row_pane * Display.LEDS_BY_ROW
        
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
            dir_down = True if (math.floor(x / 3) % 2 == self.col_pane % 2) else False
            col_pane_offset = (self.col_pane - 1 - math.floor(x/3)) * self.row_pane * self.LEDS_BY_PANE
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
        
        if(x > self.col_pane*self.LEDS_BY_PANE or x < 0 or y > self.row_pane * self.LEDS_BY_PANE or y < 0):
            return
        n = self._calculateLedIndexFromPosition(x, y)
        self.strip.setPixelColor(n, Color(red, green, blue, white))
    
    def render(self):
        self.strip.show()
        
    def reset(self, show=False):
        for x in range(self.getMaxSizeX()):
            for y in range(self.getMaxSizeY()):
                self.setPixelColor(x, y, 0, 0, 0, 0)
        if show:
            self.show()