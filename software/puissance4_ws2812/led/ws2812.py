from rpi_ws281x import PixelStrip
from puissance4_ws2812.led.direction import Direction
import json
import logging
import websockets
import asyncio

class WS2812(PixelStrip):
    
    def __init__(self,
                 count: int,
                 pin: int = 18, 
                 freq: int = 800000,
                 dma: int = 10,
                 brightness: int = 127,
                 invert:bool = False,
                 channel:int = 0):
        super(PixelStrip).__init__(self, count, pin, freq, dma, brightness, invert, channel)
        self.log = logging.getLogger('WS2812')
        self.log.info("WS2812 created")
        
class WS2812_Stub():
    
    pixels = []
    threadWebServer = None
    queue = None
    
    webserver = None
    queue = asyncio.Queue()
    connected = set()
    loop = None
    
    def __init__(self,
                 col: int,
                 row: int,
                 direction: Direction,
                 count: int,
                 pin: int = 18, 
                 freq: int = 800000,
                 dma: int = 10,
                 brightness: int = 127,
                 invert:bool=False,
                 channel:int = 0):
        self.log = logging.getLogger('WS2812_Stub')
        self.log.setLevel(logging.INFO)
        
        self.col = col
        self.row = row
        self.direction = direction
        
        #Set current screen to black
        self.pixels = [0] * count
        self.log.info("WS2812_Stub created")
    
    def begin(self):
        self.log.info("WS2812_Stub begin")
        self.webserver = websockets.serve(self.webServerRun, "0.0.0.0", 6789)
        
    def setPixelColor(self, n, color):
        self.pixels[n] = color 
    
    def show(self):
        self.log.info("WS2812_Stub show")
        if not self.loop:
            return
        
        payload = json.dumps({
            "type" : "screen",
            "screen": self.pixels
        })
        for websocket in self.connected.copy():
            coro = websocket.send(payload)
            future = asyncio.run_coroutine_threadsafe(coro, self.loop)
            print("sent payload")
    
    def _connected(self, websocket):
        payload = json.dumps({
            "type" : "settings",
            "settings": {
                "col": self.col,
                "row": self.row,
                "direction": self.direction
            }
        })
        coro = websocket.send(payload)
        future = asyncio.run_coroutine_threadsafe(coro, self.loop)
            
    def getWebServer(self):
        return self.webserver
    
    def setEventLoop(self, loop):
        self.loop = loop
    
    async def webServerRun(self, websocket, path):
        self.connected.add(websocket)
        try:
            self._connected(websocket)
            message = await websocket.recv()
            print("message received", message)
            
        except websockets.exceptions.ConnectionClosed:
            pass
        finally:
            self.connected.remove(websocket)

class WS2812_WebSocket(PixelStrip, WS2812_Stub):
    def __init__(self,
                col: int,
                row: int,
                direction: Direction,
                count: int,
                pin: int = 18, 
                freq: int = 800000,
                dma: int = 10,
                brightness: int = 127,
                invert:bool=False,
                channel:int = 0):
        
        WS2812_Stub.__init__(self, col, row, direction, count, pin, freq, dma, brightness, invert, channel)
        PixelStrip.__init__(self, count, pin, freq, dma, brightness, invert, channel)
            
    def begin(self):
        WS2812_Stub.begin(self)
        PixelStrip.begin(self)
    
    def show(self):
        WS2812_Stub.show(self)
        PixelStrip.show(self)
    
    def setPixelColor(self, n, color):
        WS2812_Stub.setPixelColor(self, n, color)
        PixelStrip.setPixelColor(self, n, color)
