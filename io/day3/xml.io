OperatorTable addAssignOperator(":", "atPutValue")

curlyBrackets := method(
  r := Map clone
  call message arguments foreach(arg,
    r doMessage(arg)
  )
  r
)

Map atPutValue := method(
  self atPut(
    call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
    call evalArgAt(1)
  )
)

Xml := Object clone

Xml indent := list()

Xml forward := method(
  write(indent join)
  write("<", call message name)
  arguments := call message arguments
  if(arguments first asString beginsWithSeq("curlyBrackets")) then(
    doMessage(arguments first) foreach(key, value,
      write(" ", key, "=\"", value, "\"")
    )
    arguments pop
  )
  writeln(">")

  indent push("  ")

  arguments foreach(arg,
    content := self doMessage(arg)

	  if(content type == "Sequence",
      write(indent join)
      writeln(content)
    )
  )

  indent pop

  write(indent join)
  writeln("</", call message name, ">")
)

Xml ul(
	li("Io"),
	li("Lua"),
	li("JavaScript")
)

doString("Xml book({ \"author\": \"Tate\", \"year\":\"2010\" })")
