#!/usr/bin/env python

import sys
import setuptools

setuptools.setup(name='centos_package_cron',
      version='1.0.0',
      description='Ansible Ruby',
      author='Brady Wied',
      author_email='support@bswtechconsulting.com',
      url='https://github.com/wied03/ansible-ruby',
      packages=setuptools.find_packages(),
      setup_requires=["ansible-lint", "ansible==2.8.6"],
     )
