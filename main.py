"""
The origin code that CC approved is Ascii
But it can send byte stream to other screen which approved Unicode
Here is the translator, and you can use "WriteBytes" (in Create) or other Byte stream method to write.
"""

import lib
Processor = lib.Byte_process()
Processor.read_origin()
Processor.translate_line()
Processor.write_file()
