class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15-beta.15"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.15/adversary_2026.9.15-beta.15_darwin_amd64.tar.gz"
      sha256 "f23702e2cc7ef90b17acb13f04643103427f6cd5aaf358dc4233e884a2e99f03"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.15/adversary_2026.9.15-beta.15_darwin_arm64.tar.gz"
      sha256 "abc9095116af305802dc4ae658900a8cf11365d96689733f11546a2625e5573c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.15/adversary_2026.9.15-beta.15_linux_amd64.tar.gz"
      sha256 "d41920521c0bfc86c052a8c43d1f9f1336febf45fb96adace620a168d17c0be6"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.15/adversary_2026.9.15-beta.15_linux_arm64.tar.gz"
      sha256 "99adf5c3a98e1bcb336a9267d0af0977e608cad8548ba0652e611e8555577444"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
