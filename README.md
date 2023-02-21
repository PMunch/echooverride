# Echo-rewriting in Nim

Small test to see how viable it is to replace all writing statements in Nim with
something else. Would be useful for microcontrollers to write over serial, or
logging libraries which wants total control over written statements.

Currently it must be run under Nim devel with the supplied nim.cfg to work:
```
Nim Compiler Version 1.9.1 [Linux: amd64]
Compiled at 2023-02-21
Copyright (c) 2006-2023 by Andreas Rumpf

git hash: c66dc913cefb08722c4bf9885948e26be1285c3f
active boot switches: -d:release
```

Output:
```
["Rewritten: ", "Hello world"]
["Rewritten: ", "Test"]
["Rewritten: ", "This is a test"]
["Rewritten: This is a second test"]
["Rewritten: This is another test"]
["Rewritten: With multiple lines"]
["Rewritten: INFO Jester is making jokes at http://0.0.0.0:5000"]
["Rewritten: ", "Starting ", "16", " threads"]
["Rewritten: ", "Listening on port ", "5000"]
```
