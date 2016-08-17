smrt bs
=======

setup::

  $ . $TESTROOT/setup


help::

  $ smrt bs -h
  usage: smrt bs -h|--help|<CMD> <ID>
  Download XML data for a maintenance request from the BuildService
    Options:
      -h                Display this message
      --help            Display manual page
  
    Operands:
      maintainers       Download maintainer data for a package
      packages          Download packages.xml data
      patchinfo         Download patchinfo.xml data
      project           Download project.xml data
      repos             Download repositories.xml data
      request           Download request.xml data
      request-diff      Download request.diff.xml data
      <MPRJ>            <ISSUER>:Maintenance:<ISSUE>
      <MRID>            Maintenance request <MRID>
      <PKG>             Package name
      <SLUG>            <MPRJ>:<MRID>
  
    Most subcommands accept either <SLUG> or <MPRJ>.
    `request`, `request-diff` accept <SLUG> or <MRID>.
    `maintainers` accepts <PKG>.

  $ smrt bs --help
  o exec man 1 smrt-bs


unknown option::

  $ smrt bs -x
  smrt bs: Unknown option '-x'
  Run 'smrt bs -h' for usage instructions
  [1]

  $ smrt bs --xeno
  smrt bs: Unknown option '--xeno'
  Run 'smrt bs -h' for usage instructions
  [1]


missing arguments::

  $ smrt bs
  smrt bs: Missing argument
  Run 'smrt bs -h' for usage instructions
  [1]

  $ smrt bs packages
  smrt bs: Missing argument
  Run 'smrt bs -h' for usage instructions
  [1]


invalid arguments::

  $ smrt bs x12345
  smrt bs: Unknown argument 'x12345'
  Run 'smrt bs -h' for usage instructions
  [1]

  $ smrt bs SUSE:Maintenance:x12345
  smrt bs: Unknown argument 'SUSE:Maintenance:x12345'
  Run 'smrt bs -h' for usage instructions
  [1]

  $ smrt bs packages SUSE:Maintenance:x12345
  smrt bs: Unknown argument 'SUSE:Maintenance:x12345'
  Run 'smrt bs -h' for usage instructions
  [1]

  $ smrt bs packages SUSE:Maintenance:12345 trailing-nonsense
  smrt bs: Unknown argument 'trailing-nonsense'
  Run 'smrt bs -h' for usage instructions
  [1]
