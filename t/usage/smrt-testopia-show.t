smrt testopia show
==================

setup::

  $ . $TESTROOT/setup


no arguments::

  $ smrt testopia show
  smrt testopia: Missing argument
  Run 'smrt testopia -h' for usage instructions
  [1]


no configuration file::

  $ smrt testopia show 1234
  smrt-testopia: missing or bungled configuration
  the 'bugzilla_url' directive is missing from your configuration files
  [1]

partial configuration file::

  $ cat > ~/.smrtrc <<EOF
  > bugzilla_url = https://bugzilla.example.org
  > EOF

  $ smrt testopia show 1234
  smrt-testopia: missing or bungled configuration
  the 'testopia_url' directive is missing from your configuration files
  [1]
