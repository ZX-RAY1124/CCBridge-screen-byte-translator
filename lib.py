class Byte_process:
    def __init__(self):
        self.i = ''
        self.Bt = b''
        self.final_line = ''
        self.incoming_mes = open('input.txt', 'r', encoding="utf-8").readlines()
        self.final_file = open('output.txt', 'w', encoding="ascii")
        self.process = []
        self.translated = []
        self.final = []

    def read_origin(self):
        for j in self.incoming_mes:
            j = j.strip('\n')
            self.process.append(j)
        return self.process

    def translate(self, a):

        self.Bt = a.encode("utf-8")
        for self.i in self.Bt:
            self.translated.append(str(self.i))
        self.final_line =','.join(self.translated)
        self.translated = []
        return self.final_line

    def translate_line(self):
        for z in self.process:
            self.final.append(self.translate(z))

    def write_file(self):
        for j in self.final:
            j += '\n'
            self.final_file.write(j)
