#!/usr/bin/expect -f
#
# Copyright 2017, Data61
# Commonwealth Scientific and Industrial Research Organisation (CSIRO)
# ABN 41 687 119 230.
#
# This software may be distributed and modified according to the terms of
# the BSD 2-Clause license. Note that NO WARRANTY is provided.
# See "LICENSE_BSD2.txt" for details.
#
# @TAG(DATA61_BSD)
#

source [file join $::env(SCRIPT_DIR) procs.inc]

set timeout 600

spawn make x86_hierarchical_attributes_defconfig
check_exit

source [file join $::env(SCRIPT_DIR) build.inc]

source [file join $::env(SCRIPT_DIR) run-x86.inc]
wait_for "str: world"