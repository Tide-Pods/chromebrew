require 'buildsystems/pip'

class Py3_ruff < Pip
  description 'An extremely fast Python linter, written in Rust.'
  homepage 'https://docs.astral.sh/ruff'
  @_ver = '0.1.3'
  version "#{@_ver}-py3.12"
  license 'GPL-2.0'
  compatibility 'all'
  source_url 'SKIP'

  binary_url({
    aarch64: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/py3_ruff/0.1.3-py3.12_armv7l/py3_ruff-0.1.3-py3.12-chromeos-armv7l.tar.zst',
     armv7l: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/py3_ruff/0.1.3-py3.12_armv7l/py3_ruff-0.1.3-py3.12-chromeos-armv7l.tar.zst',
       i686: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/py3_ruff/0.1.3-py3.12_i686/py3_ruff-0.1.3-py3.12-chromeos-i686.tar.zst',
     x86_64: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/py3_ruff/0.1.3-py3.12_x86_64/py3_ruff-0.1.3-py3.12-chromeos-x86_64.tar.zst'
  })
  binary_sha256({
    aarch64: '2f0185feab87e3f37d36029ea1ea85dc003220406962929b3d60de7f0c36d5cc',
     armv7l: '2f0185feab87e3f37d36029ea1ea85dc003220406962929b3d60de7f0c36d5cc',
       i686: '1ca0f02816822fd9cb8bed5a7cf1de3278d754475869e12a057197fb844b65cc',
     x86_64: '157ed52235826c56908cec1f699a1628322aba3d2e94366921a283e45937804e'
  })

  depends_on 'gcc_lib' # R
  depends_on 'glibc' # R
  depends_on 'python3'
  depends_on 'rust' => :build
end
