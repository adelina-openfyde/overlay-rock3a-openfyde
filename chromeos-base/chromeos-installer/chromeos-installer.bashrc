# Copyright (c) 2022 Fyde Innovations Limited and the openFyde Authors.
# Distributed under the license specified in the root directory of this project.

unset -f cros_pre_src_prepare_openfyde_patches

cros_post_src_install_rock5b_openfyde_flash_spi() {
  exeinto /usr/sbin
  doexe ${ROCK5B_OPENFYDE_BASHRC_FILEPATH}/flash_spi.sh
  doexe ${ROCK5B_OPENFYDE_BASHRC_FILEPATH}/copy_kernel.sh
}

cros_pre_src_prepare_rock5b_openfyde_patches() {
  eapply -p1 ${ROCK5B_OPENFYDE_BASHRC_FILEPATH}/rock5b.patch
}
