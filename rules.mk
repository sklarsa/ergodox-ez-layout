MOUSEKEY_ENABLE = no
BOOTMAGIC_ENABLE = no
CONSOLE_ENABLE = no
KEYLOGGER_ENABLE = yes
RGBPRESET_ENABLE = yes

ifeq ($(strip $(KEYLOGGER_ENABLE)),yes)
	OPT_DEFS += -DKEYLOGGER_ENABLE
	CONSOLE_ENABLE = yes
endif

ifeq ($(strip $(RGBPRESET_ENABLE)),yes)
	OPT_DEFS += -DRGBPRESET_ENABLE
endif
