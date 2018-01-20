#!/bin/bash

/etc/init.d/devolonetsvc start
exec /opt/devolo/dlancockpit/bin/dlancockpit
