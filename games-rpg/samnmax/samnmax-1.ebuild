# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils games cdrom

DESCRIPTION="Sam & Max Hit the Road"
HOMEPAGE="http://www.samandmax.net/?section=hittheroad"

LICENSE="freedist"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="strip"

RDEPEND=">=games-engines/scummvm-0.2.0"

S=${WORKDIR}

src_install() {
	local dir=${GAMES_DATADIR}/${PN}
	insinto "${dir}"

	cdrom_get_cds SAMNMAX.EXE
	einfo "Copying files from CD..."
	doins ${CDROM_ROOT}/MONSTER.SOU \
		${CDROM_ROOT}/SAMNMAX.000 \
		${CDROM_ROOT}/SAMNMAX.001 || die "doins failed"

	games_make_wrapper ${PN} "scummvm -f -p \"${dir}\" samnmax"
	doicon "${FILESDIR}/${PN}.png" || die "doicon failed"
	make_desktop_entry ${PN} "Sam & Max Hit the Road" ${PN}.png

	prepgamesdirs
}
