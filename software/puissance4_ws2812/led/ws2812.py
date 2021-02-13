from rpi_ws281x import PixelStrip
import logging

class WS2812(PixelStrip):
    def __init__(self,
                 count: int,
                 pin: int = 18, 
                 freq: int = 800000,
                 dma: int = 10,
                 brightness: int = 127,
                 invert:bool = False,
                 channel:int = 0):
        super().__init__(count, pin, freq, dma, brightness, invert, channel)
        self.log = logging.getLogger('WS2812')
        self.log.info("WS2812 created")
    
class WS2812_Stub():
    def __init__(self,
                 count: int,
                 pin: int = 18, 
                 freq: int = 800000,
                 dma: int = 10,
                 brightness: int = 127,
                 invert:bool=False,
                 channel:int = 0):
        self.log = logging.getLogger('WS2812_Stub')
        self.log.info("WS2812_Stub created")
    
    def begin(self):
        self.log("WS2812_Stub begin")
    