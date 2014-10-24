# Encoding: utf-8
name             'phpldapadmin-cookbook'
maintainer       'Grid Dynamics International, Inc.'
maintainer_email 'gsilantyev@griddynamics.com'
license          ''
description      'Installs phpldapadmin tool'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'yum'
depends 'yum-epel'
depends 'apache'
