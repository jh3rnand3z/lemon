#!/usr/bin/env python

'''
Asterisk Call File Generator.

This Module contains all the tools you need to generate '.call' 
files for Asterisk PBX with Python.

Channel: DAHDI/g1/11235813
Callerid: 1123
MaxRetries: 5
RetryTime: 300
WaitTime: 45
Context: numberplan-custom-1
Extension: 5813
Priority: 1


-----------------------------------------------------------------

Example:

    from cow.call import CallFile

    testing = CallFile()
    testing.generate_call('/var/spool/asterisk/outgoing/',
        'DAHDI/g1/11235813',
        '1123',
        '5',
        '300',
        '45',
        'numberplan-custom-1',
        '5813',
        '1'
    )
-----------------------------------------------------------------

Remember to add the complete path where you like to store the .call 
file and pass all the file arguments to the generate_call() method.

'''

import os
import re
import tempfile

__author__ = 'Jean Chassoul'

class CallException(Exception):
    pass

class CallError(CallException):
    pass

class CallFile(object):
    '''
        Asterisk Call File Generator.
    '''

    def __init__(self):
        self.params = {}
        self._file_options()

    def _file_options(self):
        fileargs = ('Channel', 'Callerid', 'MaxRetries', 'RetryTime',
                    'WaitTime', 'Context', 'Extension', 'Priority')

        for i in range(0, len(fileargs)):
            self.params[i] = fileargs[i]

    def input_args(self, path, args):
        if not re.search(r'^/(\w+\W?\w+)+/$', path):
            raise CallError('Invalid path: %s' % path)

        if len(args) != len(self.params):
            raise CallError('INPUT args %s NOT EQUAL file_options %s' % (len(args), len(self.params)))

    def generate_call(self, path, *args):
        self.input_args(path, args)

        (fd, path) = tempfile.mkstemp(suffix = '.call', dir = path)

        file = os.fdopen(fd, 'w')
        for i in range(0, len(args)):
            if i == 0:
                file.write(''.join((self.params[i], ': ', args[i])))
            else:
                file.write(''.join(('\n', self.params[i], ': ', args[i])))
        file.close()

if __name__=='__main__':
    testing = CallFile()
    testing.generate_call('/tmp/outbound/',
        'DAHDI/g1/11235813',
        '1123',
        '5',
        '300',
        '45',
        'numberplan-custom-1',
        '5813',
        '1'
    )