VERSION_OLD = $(strip $(shell cat version.h))
GIT_COMMIT_ID := $(shell git rev-parse --short --verify HEAD 2>/dev/null)
#GIT_COMMIT_ID := aad9
GIT_TAG_ID := $(shell git describe --tags $(GIT_COMMIT_ID) 2>/dev/null)

ifneq ($(GIT_TAG_ID),)
GIT_COMMIT_ID := $(GIT_TAG_ID)
endif

ifeq ($(GIT_COMMIT_ID),)
GIT_COMMIT_ID := (git error)
endif

VERSION_NEW := \#define GIT_COMMIT_ID "$(GIT_COMMIT_ID)"

#VERSIONFLAGS += -DFILE_SYNC_VERSION=\"$(VERSION_OLD)\" -DFILE_SYNC_GIT=\"$(GIT_COMMIT_ID)\"
VERSIONFLAGS += -DFILE_SYNC_VERSION="$(VERSION_OLD)" -DFILE_SYNC_GIT="$(GIT_COMMIT_ID)" -DVER_NEW="$(VERSION_NEW)"

#CFLAGS   += $(VERSIONFLAGS)
#CPPFLAGS += $(VERSIONFLAGS)

ifneq ($(VERSION_OLD),$(VERSION_NEW))
.PHONY : version.h
version.h:
	@echo Generating $@
	echo '$(VERSION_NEW)' >$@
endif
