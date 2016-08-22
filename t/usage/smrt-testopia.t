smrt testopia
=============

setup::

  $ . $TESTROOT/setup


help::

  $ smrt testopia -h
  usage: smrt testopia [-h|--help|create <PACKAGE>|list <PACKAGE>|show <TCID>]
  Manipulate and query Testopia testcases
    Options:
      -h                Display this message
      --help            Display manual page
    Operands:
      create            Create new testcase; opens editor
      list              List testcases for a given <PACKAGE>
      show              Display a testcase
      <PACKAGE>         Package name
      <TCID>            Testcase id

  $ smrt testopia --help
  o exec man 1 smrt-testopia


unknown option::

  $ smrt testopia -x
  smrt testopia: Unknown option '-x'
  Run 'smrt testopia -h' for usage instructions
  [1]

  $ smrt testopia --xeno
  smrt testopia: Unknown option '--xeno'
  Run 'smrt testopia -h' for usage instructions
  [1]


no arguments::

  $ smrt testopia
  smrt testopia: Missing argument
  Run 'smrt testopia -h' for usage instructions
  [1]


invalid arguments::

  $ smrt testopia foo
  smrt testopia: Unknown argument 'foo'
  Run 'smrt testopia -h' for usage instructions
  [1]

no configuration file::

  $ smrt testopia list bash
  smrt-testopia: missing or bungled configuration
  the 'bugzilla_url' directive is missing from your ~/.smrtrc
  [1]

partial configuration file::

  $ cat > ~/.smrtrc <<EOF
  > bugzilla_url = https://bugzilla.example.org
  > EOF

  $ smrt testopia list bash
  smrt-testopia: missing or bungled configuration
  the 'testopia_url' directive is missing from your ~/.smrtrc
  [1]
