
.PHONY: default build buildext force forceext install installext test testext dist clean

PYTHON=/usr/bin/python
TEST=
PARAMETERS=
PYTHONPATH=./pyaml

build:
	${PYTHON} setup.py build ${PARAMETERS}

install:
	${PYTHON} setup.py install ${PARAMETERS}

test: build
	${PYTHON} pyaml/tests/dump.py ${TEST}

testall:
	${PYTHON} ./pyaml/tests/dump.py

dist:
	${PYTHON} setup.py --with-libyaml sdist --formats=zip,gztar

windist:
	${PYTHON} setup.py --with-libyaml bdist_wininst

clean:
	${PYTHON} setup.py --with-libyaml clean -a
