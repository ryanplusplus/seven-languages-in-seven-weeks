// Write a Censor trait with a method that will replace the curse words
// Shoot and Darn with Pucky and Beans alternatives. Use a map to
// store the curse words and their alternatives.

// Load the curse words and alternatives from a file.

trait Censor {
  protected val text: String
  private val replacements = collection.mutable.Map[String, String]()

  for(line <- scala.io.Source.fromFile("censor.txt").getLines) {
    replacements += line.split("[^a-zA-Z]+")(0) -> line.split(" ")(1)
  }

  def censored = replacements.foldLeft(text) {
    case (s, (k, v)) => s.replaceAll(k, v)
  }
}

class Text(val text: String) extends Censor

println(new Text("Shoot, that darn wabbit").censored)
