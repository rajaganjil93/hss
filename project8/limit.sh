REPO="https://raw.githubusercontent.com/rajaganjil93/hss/main/"
wget -q -O /etc/systemd/system/limitssh.service "${REPO}project8/limitssh.service" && chmod +x limitssh.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitvmess.service "${REPO}project8/limitvmess.service" && chmod +x limitvmess.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitvless.service "${REPO}project8/limitvless.service" && chmod +x limitvless.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limittrojan.service "${REPO}project8/limittrojan.service" && chmod +x limittrojan.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitshadowsocks.service "${REPO}project8/limitshadowsocks.service" && chmod +x limitshadowsocks.service >/dev/null 2>&1
wget -q -O /etc/xray/limit.vmess "${REPO}project8/vmess" >/dev/null 2>&1
wget -q -O /etc/xray/limit.vless "${REPO}project8/vless" >/dev/null 2>&1
wget -q -O /etc/xray/limit.trojan "${REPO}project8/trojan" >/dev/null 2>&1
wget -q -O /etc/xray/limit.shadowsocks "${REPO}project8/shadowsocks" >/dev/null 2>&1
chmod +x /etc/ssh/limit.ssh
chmod +x /etc/xray/limit.vmess
chmod +x /etc/xray/limit.vless
chmod +x /etc/xray/limit.trojan
chmod +x /etc/xray/limit.shadowsocks
systemctl daemon-reload
systemctl enable --now limitssh
systemctl enable --now limitvmess
systemctl enable --now limitvless
systemctl enable --now limittrojan
systemctl enable --now limitshadowsocks
# systemctl start limitssh
# systemctl start limitvmess
# systemctl start limitvless
# systemctl start limittrojan
# systemctl start limitshadowsocks
# systemctl restart limitssh
# systemctl restart limitvmess
# systemctl restart limitvless
# systemctl restart limittrojan
# systemctl restart limitshadowsocks
