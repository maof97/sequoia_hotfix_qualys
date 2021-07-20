#!/bin/sh
#See https://blog.qualys.com/vulnerabilities-threat-research/2021/07/20/sequoia-a-local-privilege-escalation-vulnerability-in-linuxs-filesystem-layer-cve-2021-33909
echo "BEFORE: /proc/sys/kernel/unprivileged_userns_clone =" && cat /proc/sys/kernel/unprivileged_userns_clone
echo "BEFORE: /proc/sys/kernel/unprivileged_userns_clone =" && cat /proc/sys/kernel/unprivileged_bpf_disabled
echo "Patching...."
echo 0 > /proc/sys/kernel/unprivileged_userns_clone
echo 1 > /proc/sys/kernel/unprivileged_bpf_disabled
echo "AFTER: /proc/sys/kernel/unprivileged_userns_clone = " && cat /proc/sys/kernel/unprivileged_userns_clone
echo "AFTER: /proc/sys/kernel/unprivileged_userns_clone = " && cat /proc/sys/kernel/unprivileged_bpf_disabled
