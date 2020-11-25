## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = identical(Sys.getenv("CHESS_TEST", unset = "0"), "1")
)

## -----------------------------------------------------------------------------
library(chess)

# Add moves to a new game
fischer_sherwin <- game() %>%
  move(
    "e4", "c5", "Nf3", "e6", "d3", "Nc6", "g3", "Nf6", list("d5", "Nbd2", "Bd6", "Bg2",
    "Nge7", "O-O", "O-O", "Nh4"), "Bg2", "Be7", "O-O", "O-O", list("d5"), "Nbd2"
  )

# See the last move from the mainline
fischer_sherwin

# Mainline and variations added separately
fischer_sherwin <- game() %>%
  move("e4", "c5", "Nf3", "e6", "d3", "Nc6", "g3", "Nf6") %>%
  move(list("d5", "Nbd2", "Bd6", "Bg2", "Nge7", "O-O", "O-O", "Nh4")) %>%
  move("Bg2", "Be7", "O-O", "O-O") %>%
  move(list("d5")) %>%
  move("Nbd2")

# The same as above
fischer_sherwin

## -----------------------------------------------------------------------------
# Get the start of the game
start <- root(fischer_sherwin)

# Checkout the first move
start %>%
  forward()

# Checkout the seventh move
start %>%
  forward(7)

# See possibilities for eighth move
start %>%
  forward(7) %>%
  variations()

# Checkout the first move of variation
start %>%
  forward(7) %>%
  variation(2)

# Variation 1 is always the "trunk"
start %>%
  forward(7) %>%
  variation(1)

# Checkout second move of variation
start %>%
  forward(7) %>%
  variation(2) %>%
  forward()

# Checkout second to last move
fischer_sherwin %>%
  back()

# Checkout other possibilities for that
fischer_sherwin %>%
  back(2) %>%
  variations()

