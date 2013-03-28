# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MY_PN="Caledonia"

DESCRIPTION="Elegant and minimalistic dark theme for Plasma"
HOMEPAGE="http://caledonia.sourceforge.net"

LICENSE="CCPL-Attribution-ShareAlike-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="plasma kdm wallpapers"

DEPEND=""
RDEPEND="${DEPEND}
	plasma? (
		x11-themes/caledonia-plasma
		x11-themes/caledonia-colorscheme
		x11-themes/caledonia-ksplash
		)
	kdm? ( x11-themes/caledonia-kdm )
	wallpapers? ( x11-themes/caledonia-wallpapers )"
