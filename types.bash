function types:is-assoc-array() {
    if [ $# -lt 1 ]; then
        echo first argument should be variable name to test
        return 1
    fi >&2

    declare -pA | grep -q "^declare -A[^ ]* $1="
}

function types:is-array() {
    if [ $# -lt 1 ]; then
        echo first argument should be variable name to test
        return 1
    fi >&2

    declare -pa | grep -q "^declare -a[^ ]* $1="
}
