#
# Copyright 2018, Data61
# Commonwealth Scientific and Industrial Research Organisation (CSIRO)
# ABN 41 687 119 230.
#
# This software may be distributed and modified according to the terms of
# the BSD 2-Clause license. Note that NO WARRANTY is provided.
# See "LICENSE_BSD2.txt" for details.
#
# @TAG(DATA61_BSD)
#

cmake_minimum_required(VERSION 3.7.2)

project(filter C)

DeclareCAmkESComponent(Client SOURCES components/Client/src/client.c)
DeclareCAmkESComponent(Filter SOURCES components/Filter/src/main.c)
DeclareCAmkESComponent(Store SOURCES components/Store/src/main.c)

DeclareCAmkESRootserver(filter.camkes)
add_simulate_test([=[wait_for "received value \\\"\\\""]=])
