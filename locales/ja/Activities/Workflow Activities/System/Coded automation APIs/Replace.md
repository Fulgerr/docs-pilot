# Replace

Within a specified input string, replaces strings that match a regular expression pattern
            with a specified replacement string.

# 



# Overloads

Replace(String, String, String)Within a specified input string, replaces strings that match a
                                regular expression pattern with a specified replacement
                                string.Replace(String, String, String, Regex
                                Options)Within a specified input string, replaces strings that match a
                                regular expression pattern, and Regex options, with a specified
                                replacement string.

# Replace(String, String, String)

Within a specified input string, replaces strings that match a regular expression
                pattern with a specified replacement string.

string Replace(
	string input,
	string pattern,
	string replacement
)

inputStringThe string to be replaced.patternStringThe regular expression pattern to match.replacementStringThe replacement string.

# Replace(String, String, String, Regex Options)

Within a specified input string, replaces strings that match a regular expression
                pattern, and Regex options, with a specified replacement string.

string Replace(
	string input,
	string pattern,
	string replacement,
	RegexOptions regexOption
)

inputStringThe string to be replaced.patternStringThe regular expression pattern to match.replacementStringThe replacement string.regexOptionRegexOptionsA bitwise combination of the enumeration values that specify options for
                        matching. The available options are
                            IgnoreCaseMultiline,ExplicitCapture,
                            Compiled, Singeline,
                            IgnorePatternWhitespace, RightToLeft,
                            ECMAScript, and CultureInvariant.

# Return value

String

A new string that is identical to the input string, except that a replacement string
                takes the place of each matched string.
