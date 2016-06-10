; • A barber shop takes customers.
; • Customers arrive at random intervals, from ten to thirty milliseconds.
; • The barber shop has three chairs in the waiting room.
; • The barber shop has one barber and one barber chair.
; • When the barber’s chair is empty, a customer sits in the chair, wakes up the barber,
;   and gets a haircut.
; • If the chairs are occupied, all new customers will turn away.
; • Haircuts take twenty milliseconds.
; • After a customer receives a haircut, he gets up and leaves.
;
; Write a multithreaded program to determine how many haircuts a bar-
; ber can give in ten seconds.

(def waiting-room (atom 0))
(def number-of-cuts (atom 0))

(defn arrival-time [] (+ 10 (rand-int 21)))

(defn start-thread [f]
  (.start (Thread. f))
)

(defn waiting-room-loop []
  (Thread/sleep (arrival-time))
  (swap! waiting-room #(min 3 (inc %)))
)

(defn start-waiting-room []
  (start-thread
    #(while true (waiting-room-loop))
  )
)

(defn barber-loop []
  (while (= 0 @waiting-room))
  (swap! waiting-room #(dec %))
  (Thread/sleep 20)
  (swap! number-of-cuts #(inc %))
)

(defn start-barber []
  (start-thread
    #(while true (barber-loop))
  )
)

(start-waiting-room)
(start-barber)
(Thread/sleep 10000)
(println @number-of-cuts)
