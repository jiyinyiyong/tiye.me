set -euo pipefail
test -f calcit.cirru
test -f deps.cirru
test ! -e compact.cirru
test ! -e package.cirru
export VITE_BASE_URL=./
yarn check
yarn check:typed
yarn build
