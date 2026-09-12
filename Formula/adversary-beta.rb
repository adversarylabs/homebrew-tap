class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.12-beta.7"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.7/adversary_2026.9.12-beta.7_darwin_amd64.tar.gz"
      sha256 "6d25e1396fbce6cdaf2f7444f1bec0ea3d893809b89f88d81ad35b6f6cadd451"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.7/adversary_2026.9.12-beta.7_darwin_arm64.tar.gz"
      sha256 "7c216c936c6159fca719068a6a3a0fe6094ac48abae352db49477dcf0ce9dc36"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.7/adversary_2026.9.12-beta.7_linux_amd64.tar.gz"
      sha256 "4ebb236271839eaf64b273a97a9cad3dccc50bed70b30bcfd8f32e7ea0d70164"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.7/adversary_2026.9.12-beta.7_linux_arm64.tar.gz"
      sha256 "3fc4b739258c493a46b684b29c1c9ca4ebd8d13b823fd2a3c2ce934a73926ad4"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
