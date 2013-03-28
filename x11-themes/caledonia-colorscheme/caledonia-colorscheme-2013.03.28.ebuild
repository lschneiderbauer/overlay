# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MY_PN="Caledonia"

DESCRIPTION="Elegant and minimalistic dark theme for Plasma"
HOMEPAGE="http://caledonia.sourceforge.net"
SRC_URI="mirror://sourceforge/caledonia/Caledonia%20Color%20Scheme/${MY_PN}.colors"

LICENSE="CCPL-Attribution-ShareAlike-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"

S=${WORKDIR}

src_unpack() {
	cp ${DISTDIR}/${A} ${S}
}

src_install() {
	insinto /usr/share/apps/color-schemes
	doins "${MY_PN}.colors" || die
}
