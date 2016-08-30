package okhttp3.internal;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.List;

final class m
  implements InvocationHandler
{
  private final List<String> a;
  private boolean b;
  private String c;

  public m(List<String> paramList)
  {
    this.a = paramList;
  }

  public final Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
    throws Throwable
  {
    String str = paramMethod.getName();
    Class localClass = paramMethod.getReturnType();
    paramObject = paramArrayOfObject;
    if (paramArrayOfObject == null)
      paramObject = o.b;
    if ((str.equals("supports")) && (Boolean.TYPE == localClass))
      return Boolean.valueOf(true);
    if ((str.equals("unsupported")) && (Void.TYPE == localClass))
    {
      this.b = true;
      return null;
    }
    if ((str.equals("protocols")) && (paramObject.length == 0))
      return this.a;
    if (((str.equals("selectProtocol")) || (str.equals("select"))) && (String.class == localClass) && (paramObject.length == 1) && ((paramObject[0] instanceof List)))
    {
      paramObject = (List)paramObject[0];
      int j = paramObject.size();
      int i = 0;
      while (i < j)
      {
        if (this.a.contains(paramObject.get(i)))
        {
          paramObject = (String)paramObject.get(i);
          this.c = paramObject;
          return paramObject;
        }
        i += 1;
      }
      paramObject = (String)this.a.get(0);
      this.c = paramObject;
      return paramObject;
    }
    if (((str.equals("protocolSelected")) || (str.equals("selected"))) && (paramObject.length == 1))
    {
      this.c = ((String)paramObject[0]);
      return null;
    }
    return paramMethod.invoke(this, paramObject);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.m
 * JD-Core Version:    0.6.2
 */