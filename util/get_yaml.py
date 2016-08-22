#!/usr/bin/python

import imp
import sys

foo = imp.load_source('NOOP', sys.argv[1])
result = foo.DOCUMENTATION if sys.argv[2] == 'description' else foo.EXAMPLES
print result
