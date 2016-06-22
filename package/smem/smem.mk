###############################################################################
# 
# smem
#
###############################################################################

SMEM_VERSION = 1.4
SMEM_SITE = https://www.selenic.com/smem/download
SMEM_LICENSE = GPLv2
SMEM_LICENSE_FILE = COPYING

define SMEM_BUILD_CMDS
	$(TARGET_CC) -o $(@D)/smemcap $(@D)/smemcap.c -Wall
endef

define SMEM_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/smem $(TARGET_DIR)/usr/bin
	$(INSTALL) -D -m 0755 $(@D)/smemcap $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
