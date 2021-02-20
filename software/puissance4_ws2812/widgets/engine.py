from threading import Thread, Lock
import logging
import time
from puissance4_ws2812.widgets.widget import Widget
from puissance4_ws2812.led.display import Display
import random

class DisplayEngine(Thread):

    widgets = {}
    lockWidgets = Lock()
    iterationCounter = 0
    
    def __init__(self, display: Display, frameRate=10):
        self.log = logging.getLogger('DisplayEngine')
        Thread.__init__(self)
        self.display = display
        self.frameRate = frameRate
        self.log.info("Framerate set to {:f}".format(self.frameRate))
        self.daemon = False
        self.log.info("Display engine initialized")
        self.start()

    def _getRandomName(self):
        return "widget_{:06d}".format(random.randint(1, 999999))

    def addWidget(self, widget: Widget, name=None):
        if name is None:
            name = self._getRandomName()
        if not widget:
            self.log.error("Given widget is None")
            return False
        print("before lock")
        print("name : {:s}".format(name))
        with self.lockWidgets:
            self.widgets[name] = widget    
            print("added")
        print("after lock")
        return True
    
    def showWidgets(self):
        print("==========")
        with self.lockWidgets:
            print("get lock")
            for widget in self.widgets:
                print("#{:s} : {:s}".format(widget, str(self.widgets[widget])))
        print("==========")
        
    def delWidget(self, name):
        with self.lockWidgets:
            if name in self.widgets:
                del self.widgets[name]
            
    def delAllWidgets(self):
        with self.lockWidgets:
            self.widgets.clear()

    def _calculateSleepTimeInSeconds(self, start, end):
        period = 1 / self.frameRate
        elapsedTime = (end - start)
        return max(period - elapsedTime, 0)
        
    def run(self):
        while True:
            try:
                self.iterationCounter = self.iterationCounter + 1
                self.log.debug("====================================")
                self.log.debug("New cycle of display engine #{:d}".format(self.iterationCounter))
                start = time.time()
                self.compute()
                self.render()
                self.log.debug("====================================")
                end = time.time()
                time.sleep(self._calculateSleepTimeInSeconds(start, end))
            except Exception as e:
                self.log.exception("Run failed")
    
    def compute(self):
        self.log.debug("Start rendering widgets")
        with self.lockWidgets:
            for widget in self.widgets.values():
                widget.compute()
        self.log.debug("End rendering widgets")
        
    def render(self):
        self.log.debug("Start rendering widgets")
        with self.lockWidgets:
            self.display.reset()
            for widget in self.widgets.values():
                widget.render()
            self.display.render()
        self.log.debug("End rendering widgets")
