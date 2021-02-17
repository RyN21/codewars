
def checkComments(input, markers, expected)
  actual = solution(input, markers)
  Test.assert_equals(actual, expected, "Returned '#{actual}' but expected '#{expected}'")
end

checkComments("apples, plums % and bananas\npears\noranges !applesauce", ["%", "!"], "apples, plums\npears\noranges")
checkComments("Q @b\nu\ne -e f g", ["@", "-"], "Q\nu\ne")
