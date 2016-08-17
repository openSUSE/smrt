smrt itself
===========

setup::

  $ . $TESTROOT/setup


help::

  $ smrt -h
  usage: smrt -h|--help|[--issuer=<ISSUER>] <COMMAND> [<option>]... [<argument>]...
    Options:
      -h                Display this message
      --help            Display manual page
      -I, --issuer      Assume <ISSUER> for commands which take
                        maintenance request ids
    Operands:
      <COMMAND>         One of the commands listed below
  
    Commands:
      adopt             Adopt a maintenance request for testing
      attach            Ssh into a refhost and earmark it for testing given products
      bs                Download XML data for a maintenance request from the BuildService
      bugs              List or browse bugs related to a maintenance request
      checkout          Download metadata for a maintenance request
      config            Manipulate smrt configuration file
      detach            Disconnect attached refhost(s)
      fetch             Download metadata for a maintenance request
      hosts             Display information on attached hosts
      mklog             Create MTUI-compatible testreport
      packages          Display version information for packages under test
      push              Publish metadata for a maintenance request
      revert            Downgrade relevant packages to latest released versions
      update            Install current maintenance update
      xml               Display information gleaned from BuildService XML data

  $ smrt --help
  o exec man 1 smrt


unknown option::

  $ smrt -x
  smrt: Unknown option '-x'
  Run 'smrt -h' for usage instructions
  [1]

  $ smrt --xeno
  smrt: Unknown option '--xeno'
  Run 'smrt -h' for usage instructions
  [1]


outside a testreport::

  $ smrt
  usage: smrt -h|--help|[--issuer=<ISSUER>] <COMMAND> [<option>]... [<argument>]...
    Options:
      -h                Display this message
      --help            Display manual page
      -I, --issuer      Assume <ISSUER> for commands which take
                        maintenance request ids
    Operands:
      <COMMAND>         One of the commands listed below
  
    Commands:
      adopt             Adopt a maintenance request for testing
      attach            Ssh into a refhost and earmark it for testing given products
      bs                Download XML data for a maintenance request from the BuildService
      bugs              List or browse bugs related to a maintenance request
      checkout          Download metadata for a maintenance request
      config            Manipulate smrt configuration file
      detach            Disconnect attached refhost(s)
      fetch             Download metadata for a maintenance request
      hosts             Display information on attached hosts
      mklog             Create MTUI-compatible testreport
      packages          Display version information for packages under test
      push              Publish metadata for a maintenance request
      revert            Downgrade relevant packages to latest released versions
      update            Install current maintenance update
      xml               Display information gleaned from BuildService XML data


inside a testreport::

  $ slug=SUSE:Maintenance:1234:56789
  $ mkdir $slug
  $ cd $slug
  $ echo $slug > slug

  $ smrt
  usage: smrt -h|--help|[--issuer=<ISSUER>] <COMMAND> [<option>]... [<argument>]...
    Options:
      -h                Display this message
      --help            Display manual page
      -I, --issuer      Assume <ISSUER> for commands which take
                        maintenance request ids
    Operands:
      <COMMAND>         One of the commands listed below
  
    Commands:
      adopt             Adopt a maintenance request for testing
      attach            Ssh into a refhost and earmark it for testing given products
      bs                Download XML data for a maintenance request from the BuildService
      bugs              List or browse bugs related to a maintenance request
      checkout          Download metadata for a maintenance request
      config            Manipulate smrt configuration file
      detach            Disconnect attached refhost(s)
      fetch             Download metadata for a maintenance request
      hosts             Display information on attached hosts
      mklog             Create MTUI-compatible testreport
      packages          Display version information for packages under test
      push              Publish metadata for a maintenance request
      revert            Downgrade relevant packages to latest released versions
      update            Install current maintenance update
      xml               Display information gleaned from BuildService XML data
