bug_name="repo"
test_file="${bug_name}/bugsinpy_run_test.sh"

while read cmd; do
    test_cmd=${cmd}
    docker run -t -v $(pwd)/${bug_name}:/root/repo -w /root/repo stuatlittle/fl-human-study:latest /opt/conda/envs/exprenv/bin/${test_cmd}
done < ${test_file}