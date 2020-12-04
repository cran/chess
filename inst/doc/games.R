## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = identical(Sys.getenv("CHESS_TEST", unset = "0"), "1")
)

## -----------------------------------------------------------------------------
library(chess)

# Read final game from the Queen's Gambit
file <- system.file("harmon.pgn", package = "chess")
harmon_borgov <- read_game(file)

# PGN for game
str(harmon_borgov)

## -----------------------------------------------------------------------------
# Read all games from My 60 Memorable Games
file <- system.file("m60mg.pgn", package = "chess")
m60mg <- read_game(file)

# Check if it's a list of 60 games
length(m60mg)

## -----------------------------------------------------------------------------
# PGN for Fischer vs. Unzicker
str(m60mg[[10]])

