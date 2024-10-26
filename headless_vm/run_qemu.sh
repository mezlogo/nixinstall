#!/usr/bin/env bash

ADDITIONAL_ARGS="--enable-kvm -cpu host -machine q35 -drive if=pflash,format=raw,readonly=on,file=/usr/share/edk2-ovmf/x64/OVMF_CODE.fd"

if [ -n "$1" ]; then
    ADDITIONAL_ARGS="$ADDITIONAL_ARGS -cdrom $1"
fi

qemu-system-x86_64 $ADDITIONAL_ARGS -hda nixvm.qcow2 -m 8G -smp 8 -boot d -display gtk -nic user,id=net0,hostfwd=tcp::2022-:22
