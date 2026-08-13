class Adversary < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.13"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.13/adversary_2026.8.13_darwin_amd64.tar.gz"
      sha256 "7023d890169c9ac8d6e1d8988f22a37e2bf679461c407f7093a9c5fe81a4abb1"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.13/adversary_2026.8.13_darwin_arm64.tar.gz"
      sha256 "b077d9333b59e0dac20bc131c1fe1a31cce363cbda8cfad97c26875f156e6645"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.13/adversary_2026.8.13_linux_amd64.tar.gz"
      sha256 "a19cdf2212fb6d3c58b697349f23b092a3e47041ed85197f0a882e8edf08c150"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.13/adversary_2026.8.13_linux_arm64.tar.gz"
      sha256 "659cdba8338809c3b90f71b4056b5ca848df5fc8525b2e473b5cbbb32409139e"
    end
  end

  def install
    bin.install "adversary" => "adversary"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary version")
  end
end
