from puissance4_ws2812.led.display import Display, Direction
from puissance4_ws2812.fonts.font import Font
from puissance4_ws2812.fonts.CP437 import CP437_FONT_INFO, CP437_FONT
import time

def test_getIndexFromPositionDownRight():
    display = Display(4,3,Direction.DOWN_RIGHT, stub=True)
    assert display._calculateLedIndexFromPosition(0,0) == 0
    assert display._calculateLedIndexFromPosition(3,2) == 51
    assert display._calculateLedIndexFromPosition(6,5) == 69
    assert display._calculateLedIndexFromPosition(1,7) == 22
    assert display._calculateLedIndexFromPosition(3,8) == 33
    assert display._calculateLedIndexFromPosition(3,5) == 42
    assert display._calculateLedIndexFromPosition(9,4) == 93 
    assert display._calculateLedIndexFromPosition(11,5) == 98
    
def test_getIndexFromPositionDownLeft():
    display = Display(4,3,Direction.DOWN_LEFT, stub=True)
    assert display._calculateLedIndexFromPosition(0,0) == 99
    assert display._calculateLedIndexFromPosition(3,2) == 60
    assert display._calculateLedIndexFromPosition(6,5) == 42
    assert display._calculateLedIndexFromPosition(1,7) == 85
    assert display._calculateLedIndexFromPosition(3,8) == 78
    assert display._calculateLedIndexFromPosition(3,5) == 69
    assert display._calculateLedIndexFromPosition(9,4) == 12
    assert display._calculateLedIndexFromPosition(11,5) == 17

def test_getScreenMaxXY():
    display = Display(5, 8, Direction.DOWN_LEFT, stub=True)
    assert display.getMaxSizeX() == 5 * Display.LEDS_BY_ROW
    assert display.getMaxSizeY() == 8 * Display.LEDS_BY_COL
    
def test_fillScreen():
    display = Display(2, 4, Direction.DOWN_LEFT, stub=False)
    display.begin()
    for color in range(3):
        r = 255 if color == 0 else 0
        g = 255 if color == 1 else 0
        b = 255 if color == 2 else 0
        for y in range(12):
            for x in range(6):
                display.setPixelColor(x, y, r, g, b, 0)
                display.show()
                time.sleep(0.1)

# def test_printChar():
#     display = Display(2, 4, Direction.DOWN_LEFT, stub=False)
#     display.begin()
#     font = Font(display, CP437_FONT, CP437_FONT_INFO)
#     font.printChar('A', 0, 0, 255, 0, 0)
#     display.render()