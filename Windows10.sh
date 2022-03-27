#!/bin/bash

set -e

vagrant init gusztavvargadr/windows-10
vagrant up --provider=virtualbox
