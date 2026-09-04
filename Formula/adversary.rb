class Adversary < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.4"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4/adversary_2026.9.4_darwin_amd64.tar.gz"
      sha256 "da0ea5475d3113ed4e330e0c4d905b84367d712100e4cbec9cb2167807040d1d"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4/adversary_2026.9.4_darwin_arm64.tar.gz"
      sha256 "800e588e9e97957eebd22019c8d53ed9420057b845b2cc13301468e251836c6e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4/adversary_2026.9.4_linux_amd64.tar.gz"
      sha256 "d5364e8900a3f1b400839ed1989cb4e27d8a98896cff912859f3e5e9696b4c82"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4/adversary_2026.9.4_linux_arm64.tar.gz"
      sha256 "b685d084f41a38b46d272380b2d7efed1809730762e0d7154ed1ffb6db39a4ca"
    end
  end

  def install
    bin.install "adversary" => "adversary"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary version")
  end
end
