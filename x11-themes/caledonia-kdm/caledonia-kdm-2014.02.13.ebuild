# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MY_PN="Caledonia-KDM"

DESCRIPTION="Elegant and minimalistic dark theme for Plasma"
HOMEPAGE="http://caledonia.sourceforge.net"
#SRC_URI="http://sourceforge.net/projects/caledonia/files/Caledonia%20KDM/${MY_PN}.tar.gz/download"
SRC_URI="mirror://sourceforge/caledonia/Caledonia%20KDM/${MY_PN}.tar.gz"

LICENSE="CCPL-Attribution-ShareAlike-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}
	kde-base/kdm"

S="${WORKDIR}/${MY_PN}"

src_prepare() {
	rm INSTALL || die "Failed to remove install file"
}

src_install() {
	insinto /usr/share/apps/kdm/themes
	doins -r "${S}"
}
