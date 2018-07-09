EAPI=6

DESCRIPTION="NVIDIA Docker"
HOMEPAGE="https://github.com/NVIDIA/nvidia-docker"
SRC_URI="https://github.com/NVIDIA/nvidia-docker/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="NVIDIA-CORPORATION"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	app-emulation/nvidia-container-runtime
	app-emulation/nvidia-container-runtime-hook
"
RDEPEND="
	${DEPEND}
	x11-drivers/nvidia-drivers
"

src_configure() {
	return
}

src_compile() {
	return
}

src_install() {
	# copy binary
	dobin nvidia-docker

	# copy runtime spec
	insinto /etc/docker
	doins daemon.json
}
