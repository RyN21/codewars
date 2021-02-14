def testAnagrams(word, result, wrong)
  actual = anagrams(word, result + wrong)
  Test.assert_equals actual.to_set, result.to_set
end

word0 = "a"
result0 = ["a"]
wrong0 = ["b", "c", "d"]
testAnagrams(word0, result0, wrong0)

word1 = "ab"
result1 = ["ab", "ba"]
wrong1 = ["aa", "bb", "cc", "ac", "bc", "cd"]
testAnagrams(word1, result1, wrong1)

word2 = "abba"
result2 = ["aabb", "bbaa", "abab", "baba", "baab"]
wrong2 = ["abcd", "abbba", "baaab", "abbab", "abbaa", "babaa"]
testAnagrams(word2, result2, wrong2)
