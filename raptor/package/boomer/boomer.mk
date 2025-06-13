################################################################################
#
# boomer
#
################################################################################
BOOMER_VERSION = 0.5.2
BOOMER_SITE = $(call github,mripard,dradis,boomer-v$(BOOMER_VERSION))
BOOMER_SUBDIR = boomer
BOOMER_LICENSE = MIT

$(eval $(cargo-package))
