define vagrant::apt_source() {
  ::apt::source { $name:
    location    => 'mirror://mirrors.ubuntu.com/mirrors.txt',
    release     => $name,
    repos       => 'main restricted universe multiverse',
    include_src => false
  }
}
