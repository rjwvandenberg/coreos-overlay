EAPI=6

inherit rpm

DESCRIPTION="NVIDIA container runtime hook"
HOMEPAGE="https://github.com/NVIDIA/nvidia-container-runtime"
SRC_URI="https://nvidia.github.io/nvidia-container-runtime/centos7/x86_64/${P}-1.x86_64.rpm 
-> ${P}.rpm"

LICENSE="NVIDIA-CORPORATION"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	app-emulation/nvidia-container-runtime
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
	dobin usr/bin/nvidia-container-runtime-hook
	insinto /etc/nvidia-container-runtime
	doins etc/nvidia-container-runtime/config.toml
}
