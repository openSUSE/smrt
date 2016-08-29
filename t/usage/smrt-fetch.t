smrt fetch
==========

setup::

  $ . $TESTROOT/setup


help::

  $ smrt fetch -h
  usage: smrt fetch -h|--help
  usage: smrt fetch [--adopt] [--push] {MPRJ|MRID|SLUG} [DEST]
  
  Download metadata for a maintenance request
  
    Options:
      -h                Display this message
      --help            Display manual page
      --adopt           Assign the maintenance request to yourself for testing
      --push            Publish metadata in testreport repository
    Operands:
      MRID              Maintenance request MRID
      MPRJ              Maintenance request currently linked into
                        the maintenance project MPRJ
      SLUG              MPRJ:MRID, Maintenance request MRID
      DEST              Destination directory, defaults to SLUG

  $ smrt fetch --help
  o exec man 1 smrt-fetch


unknown option::

  $ smrt fetch -x
  smrt fetch: Unknown option '-x'
  Run 'smrt fetch -h' for usage instructions
  [1]

  $ smrt fetch --xeno
  smrt fetch: Unknown option '--xeno'
  Run 'smrt fetch -h' for usage instructions
  [1]


no arguments::

  $ smrt fetch
  smrt fetch: Missing argument
  Run 'smrt fetch -h' for usage instructions
  [1]


invalid arguments::

  $ smrt fetch x12345
  smrt fetch: Unknown argument 'x12345'
  Run 'smrt fetch -h' for usage instructions
  [1]

  $ smrt fetch SUSE:Maintenance:1234
  smrt fetch: Unknown argument 'SUSE:Maintenance:1234'
  Run 'smrt fetch -h' for usage instructions
  [1]

  $ smrt fetch oSUSE:Maintenance:1234:56789
  smrt fetch: Unknown argument 'oSUSE:Maintenance:1234:56789'
  Run 'smrt fetch -h' for usage instructions
  [1]

  $ smrt fetch SUSE:Maintenance:1234x:56789
  smrt fetch: Unknown argument 'SUSE:Maintenance:1234x:56789'
  Run 'smrt fetch -h' for usage instructions
  [1]

  $ smrt fetch SUSE:Maintenance:1234:56789x
  smrt fetch: Unknown argument 'SUSE:Maintenance:1234:56789x'
  Run 'smrt fetch -h' for usage instructions
  [1]

  $ smrt fetch SUSE:Maintenance::1234:56789
  smrt fetch: Unknown argument 'SUSE:Maintenance::1234:56789'
  Run 'smrt fetch -h' for usage instructions
  [1]


extra arguments::

  $ smrt fetch SUSE:Maintenance:1234:56789 here fubar
  smrt fetch: Unknown argument 'fubar'
  Run 'smrt fetch -h' for usage instructions
  [1]


no configuration file::

  $ smrt fetch SUSE:Maintenance:1234:56789
  smrt-fetch: missing or bungled configuration
  the 'bugzilla_url' directive is missing from your configuration files
  [1]
