BEGIN {
  srand(rseed)
  FPAT="([0-9a-zA-Z]+|[^0-9a-zA-Z]+)"
  FSEP=""
  n=int(rand() * 6)
}
{
  for (i = 1; i <= NF; i++) {
    if (i % 2 == 1) {
      printf "\033[%d;1m", (n + 31)
      n=(n + int(1 + rand() * 5)) % 6
    }
    printf "%s\033[0;1m", $i
  }
  print ""
}
