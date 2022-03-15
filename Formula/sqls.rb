class Sqls < Formula
  desc "SQL language server written in Go"
  homepage "https://github.com/lighttiger2505/sqls"
  url "https://github.com/lighttiger2505/sqls/archive/v0.2.20.tar.gz"
  sha256 "ab9a7cfc4cd881df88efd388fa2b27e7807b0580c0d9b21165946cc452905cdb"
  license "MIT"

  bottle do
    root_url "https://github.com/ErnestDong/homebrew-sqls/releases/download/sqls-0.2.20"
    sha256 cellar: :any_skip_relocation, big_sur:      "f18a6b03d91be606b0f99634249f1ba5f1725ec8c09eebb6f5bfb206545ccd52"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "42759608bb1bdb2b44884b3fc2acfa57fee5f62f83d98705aa155eeda3160cd8"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "true"
  end
end
