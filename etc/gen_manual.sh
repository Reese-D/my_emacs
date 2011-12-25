#!bash
WARNING="This file was generated using gen_manual.sh. Do not manually edit!"
MODIFIED_DATE=`date "+%m/%d/%Y"`
PROTOCOL_DATA_DOCS=`python gen_protocol_docs.py data`
PROTOCOL_RPC_DOCS=`python gen_protocol_docs.py rpc`
PROTOCOL_VERSION=`python gen_protocol_docs.py version`
cd ..
CONFIG_DOCS_FILE=/tmp/config_docs.out
sbt "run-main org.ensime.config.ProjectConfig $CONFIG_DOCS_FILE"
cd etc
CONFIG_DOCS=`cat $CONFIG_DOCS_FILE`

m4 --define=NO_MANUAL_EDIT_WARNING="$WARNING" --define=PROTOCOL_DATA_DOCUMENTATION="$PROTOCOL_DATA_DOCS" --define=PROTOCOL_RPC_DOCUMENTATION="$PROTOCOL_RPC_DOCS" --define=CONFIG_DOCUMENTATION="$CONFIG_DOCS" --define=PROTOCOL_VERSION="$PROTOCOL_VERSION" --define=MODIFIED_DATE="$MODIFIED_DATE" manual.ltx.m4 > manual.ltx
