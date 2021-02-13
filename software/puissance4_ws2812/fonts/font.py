import logging
class Font():
    font_info = {}
    font = []
    
    def __init__(self, display, font, font_info):
        self.font = font
        self.font_info = font_info
        self.display = display
        print("INFO:")
        print(self.font_info)
        self.log = logging.getLogger('Font')
        self.log.info("Font loaded : {:s}".format(self.font_info['name']))
    
    def getChar(self, asciicode):
        if asciicode not in range(256):
            return self.font[32]

        return self.font[asciicode]
    
    def getFontInfo(self):
        return self.font_info

    def printChar(self, char, x, y, r, g, b):
        """
        Print a char on the display at the position x,y with the color r,g,b
        return The width of the printed character
        """
        if (x < 0 or x > self.display.getMaxSizeX()) or (y < 0 or y > self.display.getMaxSizeY()):
            self.log.error("Char is printed out of the screen")
            return 0
        if isinstance(char, str):
            char = ord(char)
        glyph = self.getChar(char)
        print("Char {:d}".format(char))
        print(glyph)
        max_width = min(self.font_info['width'], self.display.getMaxSizeX())
        max_height = min(self.font_info['height'], self.display.getMaxSizeY())
        for _x in range(x, max_width, 1):
            mask = 1
            print("Char line {:x}".format(_x))
            print(glyph[_x])
            for _y in range(y, max_height, 1):
                if (glyph[_x] & mask > 0):
                    self.display.setPixelColor(_x, _y, r, g, b, 255)
                mask = mask << 1
        return max_width

    def printString(self, string, x, y, r, g, b):
        """
        Print a string on the display at the position x,y with the color r,g,b
        return The width of the printed string
        """
        offset_x = 0
        if (x < 0 or x > self.display.getMaxSizeX()) or (y < 0 or y > self.display.getMaxSizeY()):
            self.log.error("String is printed out of the screen")
            return 0
        for c in string:
            if (x < 0 or x > self.display.getMaxSizeX()) or (y < 0 or y > self.display.getMaxSizeY()):
                break
            char = self.getChar(char)
            #laisser un pixel d'espace entre chaque char ???
            offset_x = offset_x + self.printChar(char, x + offset_x, y, r, g, b)  
        return offset_x
        