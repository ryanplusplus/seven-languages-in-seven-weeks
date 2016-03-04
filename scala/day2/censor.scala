// Write a Censor trait with a method that will replace the curse words
// Shoot and Darn with Pucky and Beans alternatives. Use a map to
// store the curse words and their alternatives.

trait Censor {
  protected val text: String

  private val replacements = Map("Shoot" -> "Pucky", "Darn" -> "Beans")

  def censor = text.split(" ").map(s => replacements get s match {
    case Some(x) => x
    case _ => s
  }).mkString(" ")
}

class Text(val text: String) extends Censor

println(new Text("Shoot that Darn wabbit").censor)
