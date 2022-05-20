# ideally these imports would be like so, as this is how the code is generated
# from app.svc.v1 import api_pb2 as app_svc_v1_api
# from app.svc.v1 import data_pb2 as data_svc_v1_api
from gen.proto.python.app.svc.v1 import api_pb2 as app_svc_v1_api
from gen.proto.python.app.svc.v1 import data_pb2 as data_svc_v1_api

req = app_svc_v1_api.DownloadRequest(
    url="https://picsum.photos/200/300"
)

resp = app_svc_v1_api.DownloadResponse(
    file=data_svc_v1_api.File(
        name="image.jpg"
    )
)
