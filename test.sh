test_file="repo/bugsinpy_run_test.sh"
test_cmd=$(cat ${test_file})

docker run -it -v $(pwd)/repo:/root/repo -w /root/repo smkang96/xflhs:test /opt/conda/envs/exprenv/bin/${test_cmd}