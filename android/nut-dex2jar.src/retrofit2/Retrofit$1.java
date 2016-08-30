package retrofit2;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

class Retrofit$1
  implements InvocationHandler
{
  private final Platform platform = Platform.get();

  Retrofit$1(Retrofit paramRetrofit, Class paramClass)
  {
  }

  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
    throws Throwable
  {
    if (paramMethod.getDeclaringClass() == Object.class)
      return paramMethod.invoke(this, paramArrayOfObject);
    if (this.platform.isDefaultMethod(paramMethod))
      return this.platform.invokeDefaultMethod(paramMethod, this.val$service, paramObject, paramArrayOfObject);
    paramObject = this.this$0.loadServiceMethod(paramMethod);
    paramMethod = new OkHttpCall(paramObject, paramArrayOfObject);
    return paramObject.callAdapter.adapt(paramMethod);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.Retrofit.1
 * JD-Core Version:    0.6.2
 */