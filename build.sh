TERMUX_PKG_HOMEPAGE="https://github.com"
TERMUX_PKG_DESCRIPTION="sys-status offical package"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="jay"
TERMUX_PKG_VERSION="1.0.0"
TERMUX_PKG_SRCURL="https://githubusercontent.com"
TERMUX_PKG_SHA256="skip"
TERMUX_PKG_DEPENDS="termux-api, termux-tools"

termux_step_make_src() { 
    mkdir -p "$TERMUX_PKG_SRCDIR"
    curl -sL "${TERMUX_PKG_SRCURL}sys-status.sh" -o "$TERMUX_PKG_SRCDIR/sys-status.sh"
}

termux_step_make_install() {
    install -Dm755 "$TERMUX_PKG_SRCDIR/sys-status.sh" "$TERMUX_PREFIX/bin/sys-status"
}
