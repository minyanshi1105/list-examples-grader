# Create your grading script here

set -e

rm -rf student-submission
git clone $1 student-submission
cd student-submission/
FILE=ListExamples.java

if [[ -f "$FILE" ]]
then
        echo "ListExamples.java exists!"
else
        echo "Cannot find ListExamples.java!"
        echo "Your score is 0 out of 3!"
        exit
fi
