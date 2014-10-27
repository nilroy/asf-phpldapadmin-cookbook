# Encoding: utf-8
#
# Cookbook Name:: phpldapadmin-cookbook
# Attributes:: default
#
# Copyright (c) 2014 Grid Dynamics International, Inc. All Rights Reserved
# Classification level: Public
# Licensed under the Apache License, Version 2.0.
#

node.default['apache']['default_site_enabled'] = false

default['phpldapadmin']['config_dir'] = '/etc/phpldapadmin'
default['phpldapadmin']['install_dir'] = '/usr/share/phpldapadmin'
