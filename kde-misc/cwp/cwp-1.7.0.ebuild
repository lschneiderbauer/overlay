# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit kde4-base

DESCRIPTION="Another weather plasmoid which aims to be highly customizable"
HOMEPAGE="http://kde-look.org/content/show.php/Customizable+Weather+Plasmoid+%28CWP%29?content=98925"
SRC_URI="http://kde-look.org/CONTENT/content-files/98925-${P}.tar.bz2"

LICENSE="GPL"
KEYWORDS="~amd64 ~x86"
SLOT="4"
IUSE="debug"

DEPEND=""
RDEPEND="${DEPEND}
	$(add_kdebase_dep plasma-workspace)
"
