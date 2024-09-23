

# PRint the first Argument.
echo -n "$1 "

# Print hyphern with spaces around it.
echo -n "- "

# Shift the first three arguments.
shift 3
echo "$@"
