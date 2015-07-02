class Complex():
    def __add__(self, other):
        return ComplexRI(self.real + other.real, self.imag + other.imag)
    def __mul__(self, other):
        return ComplexMA(self.magnitude * other.magnitude , self.angle + other.angle)
