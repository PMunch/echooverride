import libwithecho

procWhichEchos()

echo "This is a test"
stdout.writeLine "This is a second test"
stdout.write "This is another test\nWith multiple lines\n"

import jester

routes:
  get "/hello":
    echo request
    resp "All good!"

