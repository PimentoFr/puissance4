from puissance4_ws2812.led.display import Display, Direction
from puissance4_ws2812.fonts.font import Font
from puissance4_ws2812.fonts.CP437 import CP437_FONT_INFO, CP437_FONT
from puissance4_ws2812.widgets.engine import DisplayEngine
from puissance4_ws2812.widgets.text import WidgetText
from puissance4_ws2812.widgets.text_scroll import WidgetTextScroll, WidgetTextScrollDirection
from puissance4_ws2812.widgets.rect_fill import WidgetRectFill
from puissance4_ws2812.widgets.line import WidgetLine
import time
import logging

logging.basicConfig(level=logging.DEBUG)
log = logging.getLogger('Main')



def main():
    log.info("Start Main")
    display = Display(2, 4, Direction.DOWN_LEFT, stub=False)
    display.begin()
    font = Font(display, CP437_FONT, CP437_FONT_INFO)
    
    for i in range (65, 90):
        display.reset()
        font.printChar(i, 0, 0, 255, 0, 0)#(255 - 5*i) & 255, (5*i) & 255, i & 255)
        display.render()
        time.sleep(3)
    log.info("End Main")
    
def test_DisplayEngine():
    display = Display(2, 4, Direction.DOWN_LEFT, stub=False)
    display.begin()
    displayEngine = DisplayEngine(display, frameRate=10)
    font = Font(display, CP437_FONT, CP437_FONT_INFO)
    #widget_text = WidgetText(display, "A", 0, 0, font, 255, 0, 0)
    #widget_text_2 = WidgetText(display, "BC", -5, 2, font, 0, 255, 0)
    widget_scroll_text = WidgetTextScroll(display, "HELLO WORLD", 1, 0, 4, 8, font, 255, 0, 0, 0.2, WidgetTextScrollDirection.RIGHT_TO_LEFT)
    rect = WidgetRectFill(display, 1, 9, 3, 2, 0, 0, 255)
    line = WidgetLine(display, 0, 8, 5, 8, 0, 255, 0)
    #displayEngine.addWidget(widget_text, "text")
    #displayEngine.addWidget(widget_text_2, "text2")
    displayEngine.addWidget(widget_scroll_text, "widgetScroll")
    displayEngine.addWidget(rect, "widgetRect")
    displayEngine.addWidget(line, "widgetLine")
    
if __name__ == "__main__":
    # execute only if run as a script
    test_DisplayEngine()