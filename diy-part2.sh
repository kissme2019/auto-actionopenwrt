#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.2.8/192.168.50.5/g' package/base-files/files/bin/config_generate

# repatch kenso8's naiveproxy patchfiles
#sed -i 's/if (is_linux) {/if (is_linux || is_chromeos) {/' package/feeds/kenzo/naiveproxy/patches/100-build-add-OpenWrt-staging-libraries.patch
#sed -i 's/@@ -746,7 +746,6/@@ -751,7 +751,6/' package/feeds/kenzo/naiveproxy/patches/101-build-drop-useless-deps-simd_asm.patch
