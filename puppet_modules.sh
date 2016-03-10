#!/bin/bash 
mkdir -p /etc/puppet/modules; 

if [ ! -d /etc/puppet/modules/puppet-r ]; then 
	puppet module install forward3ddev-r
fi