proc myEcho(x: varargs[string]) =
  echo x

template rewriteEcho*{echo(x)}(x: varargs[string]) =
  {.noRewrite.}:
    myEcho "Rewritten: ", x

import strutils
var cLine = "Rewritten: "

template rewriteWrite*{write(handle, x)}(handle: File, x: untyped) =
  {.noRewrite, gcsafe.}:
    if handle == stdout:
      let line = x.split("\n")
      cLine &= line[0]
      for i in line[1..^1]:
        myEcho cLine
        cLine = "Rewritten: " & i
    else:
      handle.write(x)
