class Byte_process:
    def __init__(self):
        self.i = ''
        self.Bt = b''
        self.final = ''
        self.incoming_mes = open('input.txt', 'r', encoding="utf-8").readline()
        self.final_file = open('output.txt', 'w', encoding="ascii")
        self.translated = []

    def read_origin(self):
        return self.incoming_mes

    def translate(self):
        self.Bt = self.incoming_mes.encode("utf-8")
        for self.i in self.Bt:
            self.translated.append(str(self.i))
        self.final =','.join(self.translated)
        return self.final

    def write_file(self):
        self.final = '{' + self.final + '}'
        self.final_file.write(self.final)

