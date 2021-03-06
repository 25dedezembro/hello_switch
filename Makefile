################################################################
#
# Makefile for hello_switch P4 project
#
################################################################

export TARGET_ROOT := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

include ../../init.mk

ifndef P4FACTORY
P4FACTORY := $(TARGET_ROOT)/../..
endif
MAKEFILES_DIR := ${P4FACTORY}/makefiles

# This target's P4 name
export P4_INPUT := p4src/hello_switch.p4
export P4_NAME := hello_switch

include ${MAKEFILES_DIR}/common.mk

all: bm
