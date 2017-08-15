#!/bin/bash

DEMO_DIR="$(cd "$(dirname "${0}")" || exit 1; pwd)"
VAGRANT_DIR="${DEMO_DIR}/.."

cd "${VAGRANT_DIR}" || exit 1

"${DEMO_DIR}/demo-inside-wrapper.sh" "${DEMO_DIR}/demo-inside-dynamic-provisioning.sh"
