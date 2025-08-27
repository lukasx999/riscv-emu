#!/bin/sh
set -euxo pipefail

if [[ ! -d "./riscv-arch-test/" ]]; then
    riscof --verbose info arch-test --clone
fi

if [[ ! -d "./riscof_work/test_list.yaml" ]]; then
    riscof testlist --config=config.ini --suite=riscv-arch-test/riscv-test-suite/ --env=riscv-arch-test/riscv-test-suite/env
fi

riscof run --config=config.ini --suite=riscv-arch-test/riscv-test-suite/ --env=riscv-arch-test/riscv-test-suite/env
# riscof coverage --suite=riscv-arch-test/riscv-test-suite/ --env=riscv-arch-test/riscv-test-suite/env --cgf-file=./riscv-arch-test/coverage/dataset.cgf
