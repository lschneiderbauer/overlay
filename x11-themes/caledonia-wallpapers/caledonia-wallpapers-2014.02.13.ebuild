# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MY_PN="Caledonia_Official_Wallpaper_Collection"

DESCRIPTION="Elegant and minimalistic dark theme for Plasma"
HOMEPAGE="http://caledonia.sourceforge.net"
SRC_URI="mirror://sourceforge/caledonia/Caledonia%20Official%20Wallpapers/${MY_PN}.tar.gz"

LICENSE="CCPL-Attribution-ShareAlike-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_PN}"

src_install() {
	insinto /usr/share/wallpapers
	doins -r "${S}"
}
