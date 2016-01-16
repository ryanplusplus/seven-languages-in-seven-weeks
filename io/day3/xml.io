Xml := Object clone

Xml indent := list("")

Xml forward := method(
  write(indent last)
  writeln("<", call message name, ">")
  indent push("  " .. indent last)
  call message arguments foreach(arg,
    content := self doMessage(arg)
	  if(content type == "Sequence",
      write(indent last)
      writeln(content)
    )
  )
  indent pop
  write(indent last)
  writeln("</", call message name, ">")
)

Xml ul(
	li("Io"),
	li("Lua"),
	li("JavaScript")
)
