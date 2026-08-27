class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.27-beta.4"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.4/adversary_2026.8.27-beta.4_darwin_amd64.tar.gz"
      sha256 "9cd3f77638cef7733559f3fe056db15dadfc6d6edb3a674a2878cb3f95fe90f5"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.4/adversary_2026.8.27-beta.4_darwin_arm64.tar.gz"
      sha256 "2fef288de32808adf0d4938ef893e7083d534ebcfae21cd6debf10033179847f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.4/adversary_2026.8.27-beta.4_linux_amd64.tar.gz"
      sha256 "dd99a6a52f4e0b7eea46714c1fe1fb365ebd3d1ce0d68f160dbbec41746b10a5"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.4/adversary_2026.8.27-beta.4_linux_arm64.tar.gz"
      sha256 "72fa463625fcf2acdf9e95c59a862e7aa4559477cd71bd02e417d96ed5889d78"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
