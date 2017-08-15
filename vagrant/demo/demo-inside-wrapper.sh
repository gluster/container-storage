#!/bin/bash

DEMO_DIR="$(dirname "${0}")"
DEMO_DIR="$(readlink -m "${DEMO_DIR}")"
VAGRANT_DIR="${DEMO_DIR}/.."
SSH_CONFIG=${DEMO_DIR}/ssh-config

cd "${VAGRANT_DIR}" || exit 1

DEMO=$1

vagrant ssh-config > "${SSH_CONFIG}"

scp -F "${SSH_CONFIG}" "${DEMO_DIR}/util.sh" "${DEMO}" master: >/dev/null 2>&1
ssh -t -F "${SSH_CONFIG}" master "./$(basename "${DEMO}")"
