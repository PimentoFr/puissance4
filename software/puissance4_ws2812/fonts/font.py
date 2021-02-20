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

    def getCharWidth(self, char):
        return self.font_info['width']
        
    def getCharHeight(self, char):
        return self.font_info['height']
        
    def getCharBox(self, char):
        """
        Get the box countaining the char
        return (width, height
        """
        return (self.getCharWidth(char), self.getCharHeight(char))
    
    def getStringBox(self, string: str):
        width = 0
        height = 0
        for c in string:
            (w, h) = self.getCharBox(c)
            width = width + w
            height = max(height, h)
        return (width, height)
    
    def printChar(self, char, x, y, r, g, b):
        return self.printCharWithBox(char, x, y, self.getCharWidth(char), self.getCharWidth(char), r, g, b)
    
    
    def printCharWithBox(self, char, x, y, width, height, r, g, b, offsetX = 0, offsetY = 0):
        if isinstance(char, str):
            char = ord(char)
        self.log.debug("printCharWithBox {:c} x={:d}, y={:d}, width={:d}, height={:d}, offX={:d}, offY={:d}".format(char, x, y, width, height, offsetX, offsetY))
        
        glyph_col = -1
        mask_row_init = 1
        
        charWidth = self.getCharWidth(char)
        charHeight = self.getCharHeight(char)
        glyph = self.getChar(char)
        
        #Handling offset problems
        if offsetX < 0:
            glyph_col = glyph_col + min(abs(offsetX), charWidth)
        if offsetY < 0:
             mask_row_init = mask_row_init << min(offsetY, charHeight)
        
        # Test the character is in the box
        if (offsetX <= (-1*charWidth) or offsetX > width) or (offsetY < (-1*charHeight) or offsetY > height):
            self.log.debug("Out of box")
            return charWidth
    
        # Truncate the box with the display area
        boxMinX = min(max(x, 0), self.display.getMaxSizeX())
        boxMinY = min(max(y, 0), self.display.getMaxSizeY())
        boxMaxX = min(max(x + width, 0), self.display.getMaxSizeX())
        boxMaxY = min(max(y + height, 0), self.display.getMaxSizeY())
        
        print("BoxMinX", boxMinX, "BoxMinY", boxMinY)
        print("BoxMaxX", boxMaxX, "BoxMaxY", boxMaxY)
        
        xmin = max(boxMinX, x + offsetX)
        ymin = max(boxMinY, y + offsetY)
        xmax = min(boxMaxX, x + offsetX + charWidth - 1)
        ymax = min(boxMaxY, y + offsetY + charHeight - 1)
        
        self.log.debug("Draw char {:d}={:c}, x={:d}, y={:d}, width={:d}, height={:d}, offX={:d}, offY={:d}".format(
            char, char,
            x, y,
            width,
            height,
            offsetX,
            offsetY
        ))
        
        #self.log.debug("BoxW={:d}, BoxH={:d}".format(box_width, box_height))
        self.log.debug("Glyph_col: {:d}, Mask {:02x}".format(glyph_col, mask_row_init))
        self.log.debug("Range X : {:d} -> {:d}".format(xmin, xmax))
        self.log.debug("Range Y : {:d} -> {:d}".format(ymin, ymax))
        #Draw our character
        for _x in range(xmin, xmax, 1):
            glyph_col = glyph_col + 1
            mask = mask_row_init
            for _y in range(ymin, ymax, 1):                
                if (glyph[glyph_col] & mask > 0):
                    self.display.setPixelColor(_x, _y, r, g, b, 255)
                mask = mask << 1
    
        return charWidth

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
        