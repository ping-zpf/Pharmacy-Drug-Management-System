# Create your views here.
from rest_framework.decorators import api_view, authentication_classes
from myapp.auth.authentication import AdminTokenAuthtication
from myapp.handler import APIResponse
from myapp.models import Thing
from myapp.permission.permission import isDemoAdminUser
from myapp.serializers import ThingSerializer, ListThingSerializer, DetailThingSerializer, UpdateThingSerializer
from myapp import utils


@api_view(['GET'])
def list_api(request):
    """
    列出所有药品信息
    """
    if request.method == 'GET':
        things = Thing.objects.all().order_by('-create_time')
        serializer = ListThingSerializer(things, many=True)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)


@api_view(['GET'])
def detail(request):
    """
    获取单个药品的详细信息
    """
    if request.method == 'GET':
        try:
            pk = request.GET.get('id', -1)
            thing = Thing.objects.get(pk=pk)
            serializer = DetailThingSerializer(thing)
            return APIResponse(code=0, msg='查询成功', data=serializer.data)
        except Thing.DoesNotExist:
            return APIResponse(code=1, msg='对象不存在')


@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def create(request):
    """
    创建新的药品信息
    """
    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    serializer = ThingSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='创建成功', data=serializer.data)
    else:
        utils.log_error(request, '参数错误')

    return APIResponse(code=1, msg='创建失败')


@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def update(request):
    """
    更新药品信息
    """
    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    try:
        pk = request.GET.get('id', -1)
        thing = Thing.objects.get(pk=pk)
    except Thing.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')

    serializer = UpdateThingSerializer(thing, data=request.data)
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='更新成功', data=serializer.data)
    else:
        utils.log_error(request, '参数错误')

    return APIResponse(code=1, msg='更新失败')


@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def delete(request):
    """
    删除药品信息
    """
    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    try:
        ids = request.GET.get('ids')
        ids_arr = ids.split(',')
        Thing.objects.filter(id__in=ids_arr).delete()
    except Thing.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')

    return APIResponse(code=0, msg='删除成功')