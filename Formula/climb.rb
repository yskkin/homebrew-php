require File.expand_path("../../Abstract/abstract-php-phar", __FILE__)

class Climb < AbstractPhpPhar
  init
  desc "Composer version manager tool"
  homepage "https://github.com/vinkla/climb"
  url "https://github.com/vinkla/climb/releases/download/0.8.1/climb.phar"
  sha256 "0778330f793cc1cf0fc4e443c10f2d65c2160aa1e731102b5f07187d3373686e"

  bottle do
    cellar :any_skip_relocation
    sha256 "e712bee279c51ebea7cac962e5a61bb3dc6986424a54ed528be694d325406eef" => :el_capitan
    sha256 "cc6ded14b67effe3bd916b9037be10198fb30fb843076d6598b7d24cbc0765ef" => :yosemite
    sha256 "a5646d7ae4751c0097162197901486c9ad6460f4054f5f29158c307e4713d13f" => :mavericks
  end

  test do
    system "climb", "--version"
  end
end
