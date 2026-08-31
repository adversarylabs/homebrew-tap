class Adversary < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.31"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.31/adversary_2026.8.31_darwin_amd64.tar.gz"
      sha256 "e527b4b02dcda090c887fdac16d5290944ad09ef01d3aa220a289f4a1c596cdb"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.31/adversary_2026.8.31_darwin_arm64.tar.gz"
      sha256 "8926dd9e1e94cd1facc6f99f3d8560cabd903afaff96e7206ea9dc3ae6b848fa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.31/adversary_2026.8.31_linux_amd64.tar.gz"
      sha256 "9c5ceed1643f1ffec9021a852078ad50008ae3557d7fb426ccca29c16cec6c76"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.31/adversary_2026.8.31_linux_arm64.tar.gz"
      sha256 "39194c5430071ecc063d1385469477a32500b3fbb9c2f2dc6931f6108e3c7944"
    end
  end

  def install
    bin.install "adversary" => "adversary"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary version")
  end
end
