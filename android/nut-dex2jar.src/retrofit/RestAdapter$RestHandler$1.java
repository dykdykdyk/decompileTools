package retrofit;

class RestAdapter$RestHandler$1
  implements RxSupport.Invoker
{
  RestAdapter$RestHandler$1(RestAdapter.RestHandler paramRestHandler, RestMethodInfo paramRestMethodInfo, Object[] paramArrayOfObject)
  {
  }

  public ResponseWrapper invoke(RequestInterceptor paramRequestInterceptor)
  {
    return (ResponseWrapper)RestAdapter.RestHandler.access$100(this.this$1, paramRequestInterceptor, this.val$methodInfo, this.val$args);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.RestAdapter.RestHandler.1
 * JD-Core Version:    0.6.2
 */