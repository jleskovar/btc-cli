if [[ ! -o interactive ]]; then
    return
fi

compctl -K _btc btc

_btc() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(btc commands)"
  else
    completions="$(btc completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
