#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
sed -i '$a src-git haichuan https://github.com/haichuan2001/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/haichuan2001/small' feeds.conf.default
sed -i '$a src-git AdGuardHome https://github.com/haichuan2001/AdGuardHome.git' feeds.conf.default
sed -i '$a src-git IPTV https://github.com/haichuan2001/openwrt-iptvhelper.git' feeds.conf.default
#sed -i '$a src-git ZHIYONG https://github.com/NueXini/NueXini_Packages.git' feeds.conf.default
#sed -i '$a src-git amule https://github.com/amule-project/amule.git' feeds.conf.default
sed -i '$a src-git packages https://github.com/coolsnowwolf/packages' feeds.conf.default
sed -i '$a src-git luci https://github.com/coolsnowwolf/luci' feeds.conf.default
sed -i 'src-git routing https://git.openwrt.org/feed/routing.git' feeds.conf.default
sed -i '$a src-git telephony https://git.openwrt.org/feed/telephony.git' feeds.conf.default
