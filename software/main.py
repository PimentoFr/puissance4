from puissance4_ws2812.led.display import Display, Direction
from puissance4_ws2812.fonts.font import Font
from puissance4_ws2812.fonts.CP437 import CP437_FONT_INFO, CP437_FONT
import time
import logging

logging.basicConfig(level=logging.INFO)
log = logging.getLogger('Main')

def main():
    log.info("Start Main")
    display = Display(2, 4, Direction.DOWN_LEFT, stub=False)
    display.begin()
    font = Font(display, CP437_FONT, CP437_FONT_INFO)
    
    for i in range (65, 90):
        display.reset()
        font.printChar(i, 0, 0, (255 - 5*i) & 255, (5*i) & 255, i & 255)
        display.render()
        time.sleep(3)
    log.info("End Main")

if __name__ == "__main__":
    # execute only if run as a script
    main()