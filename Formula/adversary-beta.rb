class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15-beta.9"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.9/adversary_2026.9.15-beta.9_darwin_amd64.tar.gz"
      sha256 "a9e3be72c2015b95ec6e5b94b0be9626364255fd0fcb75a4a17da355b5c822b5"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.9/adversary_2026.9.15-beta.9_darwin_arm64.tar.gz"
      sha256 "04e4b5c82a4557dae3765a441d112d8cda665f64b1685b3776c8b274a13e9258"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.9/adversary_2026.9.15-beta.9_linux_amd64.tar.gz"
      sha256 "e65a87cd81850274130ca2b87103a785ad4600442c4ebbd6eba51ff143a7f9f5"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.9/adversary_2026.9.15-beta.9_linux_arm64.tar.gz"
      sha256 "dbc17f7a7bff4020745700a6b993ddb814aa2e2f2424471a64e820c11d6e5976"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
