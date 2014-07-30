include stdlib

class { 'vagrant::apt': release => 'lucid', stage => 'setup' } 
  -> class { 'act': }
