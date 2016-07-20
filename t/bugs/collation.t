Interaction between locale, sort, join
======================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:2141:102014

  $ reify-fixture $slug
  $ cd $slug

test::

  $ env LC_ALL=en_US.UTF-8 smrt xml release -b
  SUSE_Updates_SLE-Module-Containers_12_ppc64le SUSE:Updates:SLE-Module-Containers:12:ppc64le ppc64le sles12sp1-docker-image 1.0.4 20160308171022
  SUSE_Updates_SLE-Module-Containers_12_s390x SUSE:Updates:SLE-Module-Containers:12:s390x s390x sles12sp1-docker-image 1.0.4 20160308170749
  SUSE_Updates_SLE-Module-Containers_12_x86_64 SUSE:Updates:SLE-Module-Containers:12:x86_64 x86_64 sles12sp1-docker-image 1.0.4 20160308170633

  $ env LC_ALL=C smrt xml release -b
  SUSE_Updates_SLE-Module-Containers_12_ppc64le SUSE:Updates:SLE-Module-Containers:12:ppc64le ppc64le sles12sp1-docker-image 1.0.4 20160308171022
  SUSE_Updates_SLE-Module-Containers_12_s390x SUSE:Updates:SLE-Module-Containers:12:s390x s390x sles12sp1-docker-image 1.0.4 20160308170749
  SUSE_Updates_SLE-Module-Containers_12_x86_64 SUSE:Updates:SLE-Module-Containers:12:x86_64 x86_64 sles12sp1-docker-image 1.0.4 20160308170633

the above used to generate::

  join: -:4: is not sorted: SUSE_SLE-12-SP1_Docker_Update_images ppc64le sles12sp1-docker-image 1.0.4 20160308170615
  SUSE_Updates_SLE-Module-Containers_12_ppc64le SUSE:Updates:SLE-Module-Containers:12:ppc64le ppc64le sles12sp1-docker-image 1.0.4 20160308171022
  SUSE_Updates_SLE-Module-Containers_12_s390x SUSE:Updates:SLE-Module-Containers:12:s390x s390x sles12sp1-docker-image 1.0.4 20160308170749
  SUSE_Updates_SLE-Module-Containers_12_x86_64 SUSE:Updates:SLE-Module-Containers:12:x86_64 x86_64 sles12sp1-docker-image 1.0.4 20160308170633
  [1]
