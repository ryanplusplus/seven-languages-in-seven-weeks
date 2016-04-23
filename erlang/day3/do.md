### Monitor the translate_service and restart it should it die.
```erlang
c(translator).
c(doctor).
doctor:start(fun translator:start/0, as, amigo).
translator:translate(amigo, "casa").
translator:translate(amigo, "cas").
```

### Make the Doctor process restart itself if it should die.
This doesn't quite work yet...
```erlang
c(translator).
c(doctor).
doctor:start_supervised(fun translator:start/0, as, amigo).
translator:translate(amigo, "casa").
translator:translate(amigo, "cas").
```

### Make a monitor for the Doctor monitor. If either monitor dies, restart it.
