#!/bin/bash


echo What is the new version?
read NEW_VERSION
echo new version is $NEW_VERSION

CURRENT_VERSION=$(sed -n -e 's/.*<version>\(.*\)<\/version>.*/\1/p' xmlTest.xml)
# Finding the value in between '<version>' and '</version>'
# \( and \( is used to store a group
# \1 retrieves the group
# .* matches any string, including empty space
# \p prints the output
# https://www.gnu.org/software/sed/manual/

echo $CURRENT_VERSION
sed -i 's/'"$CURRENT_VERSION"'/'"$NEW_VERSION"'/' xmlTest.xml;
