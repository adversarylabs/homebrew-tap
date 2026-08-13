class Adversary < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.14"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.14/adversary_2026.8.14_darwin_amd64.tar.gz"
      sha256 "b55f390ec3a37a67dd1206a27793edb82214b08c34f5e482729de0c73d76030f"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.14/adversary_2026.8.14_darwin_arm64.tar.gz"
      sha256 "2c081fe0b4343a2f662976a1ca5fc3185ff84a4a63d82bacc96874ea0284badc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.14/adversary_2026.8.14_linux_amd64.tar.gz"
      sha256 "fd1470b49eabc107cb02c8aa70d7eff8b8aa73f782f6a7726503fce0bd28400a"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.14/adversary_2026.8.14_linux_arm64.tar.gz"
      sha256 "18e616291d909ed3f4bdf9c41475d70433d0dd90c1ab9323bc8cb2f00e394958"
    end
  end

  def install
    bin.install "adversary" => "adversary"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary version")
  end
end
