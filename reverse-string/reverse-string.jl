using Unicode
const TEST_GRAPHEMES = true
# i found this line at `Base.reverse` in julia official docs:)
# oneline solution
myreverse(s) = join(reverse(collect(graphemes(s))))
