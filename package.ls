author:
  name: ['Victor Hsieh']
  email: 'victor@csie.org'
name: 'zhutil'
description: 'Chinese utils'
version: '0.6.1'
repository:
  type: 'git'
  url: 'git://github.com/victorhsieh/npm-zhutil.git'
scripts:
  prepublish: """
    ./node_modules/.bin/lsc -cj package.ls
    ./node_modules/.bin/lsc -cbo lib src
  """
  test: './node_modules/.bin/lsc test/zhutil_test.ls'
main: 'lib/zhutil.js'
engines:
  node: '0.10.x'
  npm: '1.x'
dependencies: {}
devDependencies:
  LiveScript: \1.1.x
optionalDependencies: {}
