#!/bin/bash

echo Starting build...

crave run  --no-patch -- "rm -rf device/samsung/a2corelte kernel/samsung/a2corelte vendor/samsung/a2corelte; \
git clone https://github.com/Minionguyjpro/android_device_samsung_a2corelte --depth 1 -b lineage-21.0 device/samsung/a2corelte; \
git clone https://github.com/Minionguyjpro/android_kernel_samsung_exynos7870 --depth 1 -b lineage-21.0 kernel/samsung/a2corelte; \
git clone https://github.com/Minionguyjpro/proprietary_vendor_samsung_a2corelte --depth 1 -b lineage-21.0 vendor/samsung/a2corelte; \
source build/envsetup.sh; \
lunch lineage_a2corelte-eng; \
m bacon"
