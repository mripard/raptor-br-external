################################################################################
#
# boomer
#
################################################################################
BOOMER_VERSION = qrcode
BOOMER_SITE = $(call github,mripard,boomer,$(BOOMER_VERSION))
BOOMER_LICENSE = MIT

$(eval $(cargo-package))
