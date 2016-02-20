// Write a game that will take a tic-tac-toe board with X, O, and blank characters
// and detect the winner or whether there is a tie or no winner yet. Use classes
// where appropriate.

type TicTacToeBoard = Array[Char]

object TicTacToeScorer {
  private val winners = List(
    (0, 1, 2),
    (3, 4, 5),
    (6, 7, 8),
    (0, 3, 6),
    (1, 4, 7),
    (2, 5, 8),
    (0, 4, 8),
    (2, 4, 6))

  def score(board: TicTacToeBoard): Char = {
    for (winner <- winners) {
      if (board(winner._1) == board(winner._2) && board(winner._2) == board(winner._3)) {
        if (board(winner._1) == 'x') return 'x'
        if (board(winner._1) == 'o') return 'o'
      }
    }

    return '_'
  }
}

println("The winner is: " + TicTacToeScorer.score(Array(
  'x', 'o', 'o',
  'o', 'o', 'x',
  'x', 'x', 'o')))
