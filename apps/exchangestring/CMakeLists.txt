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

project(exchangestring C)

DeclareCAmkESComponent(Server SOURCES components/Server/src/main.c)
DeclareCAmkESComponent(Client SOURCES components/Client/src/client.c)

DeclareCAmkESRootserver(exchangestring.camkes)
add_simulate_test([=[wait_for "Client ret: This is a string from server."]=])
