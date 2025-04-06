# # Git稀疏克隆，只克隆指定目录到本地
# function git_sparse_clone() {
#     branch="$1" repourl="$2" && shift 2
#     git clone --depth=1 -b $branch --single-branch --filter=blob:none --sparse $repourl
#     repodir=$(echo $repourl | awk -F '/' '{print $(NF)}')
#     cd $repodir && git sparse-checkout set $@
#     mv -f $@ ../package
#     cd .. && rm -rf $repodir
# }

#添加额外插件
git clone --depth=1 https://github.com/mchome/luci-app-dogcom.git package/luci-app-dogcom
git clone --depth=1 https://github.com/mchome/openwrt-dogcom.git package/dogcom


# # 科学上网插件
# git clone --depth=1 -b main https://github.com/fw876/helloworld package/luci-app-ssr-plus
# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages package/openwrt-passwall
# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall
# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2 package/luci-app-passwall2
# git_sparse_clone master https://github.com/vernesong/OpenClash luci-app-openclash