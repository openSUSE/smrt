# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s

if [[ -n ${SMRT_IN_DEVELOPMENT:+set} && -a $SMRT_IN_DEVELOPMENT ]]; then
  source $SMRT_IN_DEVELOPMENT:a
fi
