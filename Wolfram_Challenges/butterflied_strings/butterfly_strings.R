# Description: This is my attempt at the Wolfram Challenge Butterflied Strings, 
# which you can find at the following link.: 
# https://challenges.wolframcloud.com/challenge/butterflied-strings


butterfly_string <- function(string) {
    # :param string: Some string.
    # :return: Input string concatenated with the reverse of itself.
    # Example:
    # Hallo -> HalloollaH
    # Tree -> TreeeerT
    # Car -> CarraC
    if (!is.character(string)) {
      return("Argument must be a string!")
    } else {
        string_length <- nchar(string)
        for (i in 0:string_length) {
        string <- paste(string, substr(string, string_length - i, string_length - i), sep="")
        }
        return (string)
    }
}



# Testing butterfly_string function.

test_string_1 <- "Hallo"
test_string_2 <- "Tree"
test_string_3 <- "Car"
test_string_4 <- "butterfly"
test_string_5 <- "Hallo World!"



print(butterfly_string(test_string_1))
print(butterfly_string(test_string_2))
print(butterfly_string(test_string_3))
print(butterfly_string(test_string_4))
print(butterfly_string(test_string_5))