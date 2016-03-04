// Use foldLeft to compute the total size of a list of strings.

println((0 /: List("how", "now", "brown", "cow")) { (sum, s) => sum + s.length })
// 14
