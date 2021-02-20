from abc import ABC, abstractmethod

class Widget(ABC):
    
    @abstractmethod
    def render(self):
        pass
    
    @abstractmethod
    def compute(self):
        pass