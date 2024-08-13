EXEC="./sw_test.out"

# Loop through the numbers 2 to 7
for i in $(seq 1 10); do
  # Run the command with the current number
  $EXEC -v 1 tests/t$i.txt tests/q$i.txt
done