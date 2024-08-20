# TWRP device tree for Galaxy A2 Core
Add to ``.repo/local_manifests/a2corelte.xml``:

```
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/samsung/a2corelte" name="android_device_samsung_a2corelte" remote="TeamWin" revision="android-12.1" />
</manifest>
```

Then run ``repo sync`` to check it out.

Kernel sources are available at: https://github.com/Minionguyjpro/android_kernel_samsung_exynos7870
