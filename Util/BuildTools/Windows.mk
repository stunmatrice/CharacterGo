ARGS=--all

default: help

# root of the project (makefile directory)
export ROOT_PATH=$(CURDIR)/

export INSTALLATION_DIR=$(ROOT_PATH)Build/

.PHONY: PythonAPI
PythonAPI: LibCharacterGo

.PHONY: LibCharacterGo
LibCharacterGo:
	@"${CHRACACTERGO_BUILD_TOOLS_FOLDER}/BuildLibCharacterGo.bat" --server --client --generator "$(GENERATOR)"

