# Python Code Gen Problem

## Objectives

1. Define services and DTOs in Protobuf
1. Generate code with Buf, maintaining easy separation of generated vs application code
1. Require no post-processing of generated Python to "fix" import paths

## How to use

The code is already generated in `gen/proto/python` so all that remains is to run the code. 

```
python3 main.py
```

Should fail like so:

```
Traceback (most recent call last):
  File "/Users/user/go/src/github.com/jbendotnet/python-codegen-problem/main.py", line 2, in <module>
    from gen.proto.python.app.svc.v1 import api_pb2 as app_svc_v1_api
  File "/Users/user/go/src/github.com/jbendotnet/python-codegen-problem/gen/proto/python/app/svc/v1/api_pb2.py", line 14, in <module>
    from app.svc.v1 import data_pb2 as app_dot_svc_dot_v1_dot_data__pb2
ModuleNotFoundError: No module named 'app'
make: *** [run] Error 1
```