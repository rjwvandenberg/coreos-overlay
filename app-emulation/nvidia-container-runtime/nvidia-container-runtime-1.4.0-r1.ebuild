EAPI=6

inherit rpm

DESCRIPTION="NVIDIA container runtime"
HOMEPAGE="https://github.com/NVIDIA/nvidia-container-runtime"
SRC_URI="https://nvidia.github.io/nvidia-container-runtime/centos7/x86_64/nvidia-container-runtime-2.0.0-1.docker18.03.0.x86_64.rpm 
-> ${P}.rpm"

LICENSE="NVIDIA-CORPORATION"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	app-emulation/libnvidia-container-tools
	sys-libs/libseccomp
"
RDEPEND="${DEPEND}"

S=${WORKDIR}

src_configure() {
	return
}

src_compile() {
	return
}

src_install() {
	dobin usr/bin/nvidia-container-runtime
}
