class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.28-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.1/adversary_2026.7.28-beta.1_darwin_amd64.tar.gz"
      sha256 "7d4277f5334a9aab9b558754594904c27f2de4e6372f288e61cd68c776b82af2"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.1/adversary_2026.7.28-beta.1_darwin_arm64.tar.gz"
      sha256 "f6064fbd9fd44177598b01a47eb2d8344d981fb9ee3baff5adbbaa6c127662bc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.1/adversary_2026.7.28-beta.1_linux_amd64.tar.gz"
      sha256 "52e3f4b9f63bf09b92b5134798441e324947b208835ba38dbc69d72dd2193449"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.1/adversary_2026.7.28-beta.1_linux_arm64.tar.gz"
      sha256 "da48e15f83b9c0fd28cd8ab3fd8fbe0e68bfd7d9420eccb9c0e45b7fa3bb84d1"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
