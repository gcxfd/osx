#!/usr/bin/env xonsh

$RAISE_SUBPROC_ERROR = True
$XONSH_SHOW_TRACEBACK = True

from os.path import dirname,abspath,exists,join

PWD = dirname(abspath(__file__))
cd @(PWD)

