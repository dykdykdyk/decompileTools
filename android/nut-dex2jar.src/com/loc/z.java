package com.loc;

import java.io.DataOutputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;

public final class z
{
  private static z a;

  public static z a()
  {
    if (a == null)
      a = new z();
    return a;
  }

  public static HttpURLConnection a(ad paramad, boolean paramBoolean)
    throws l
  {
    try
    {
      c(paramad);
      if (paramad.c == null)
      {
        localObject = null;
        if (!paramBoolean)
          break label98;
      }
      label98: for (Object localObject = new ac(paramad.a, paramad.b, (Proxy)localObject, true); ; localObject = new ac(paramad.a, paramad.b, (Proxy)localObject, false))
      {
        localObject = ((ac)localObject).a(paramad.d(), paramad.b(), true);
        paramad = paramad.e();
        if ((paramad != null) && (paramad.length > 0))
        {
          DataOutputStream localDataOutputStream = new DataOutputStream(((HttpURLConnection)localObject).getOutputStream());
          localDataOutputStream.write(paramad);
          localDataOutputStream.close();
        }
        ((HttpURLConnection)localObject).connect();
        return localObject;
        localObject = paramad.c;
        break;
      }
    }
    catch (l paramad)
    {
      throw paramad;
    }
    catch (Throwable paramad)
    {
      paramad.printStackTrace();
    }
    throw new l("未知的错误");
  }

  public static byte[] a(ad paramad)
    throws l
  {
    try
    {
      paramad = b(paramad, true);
      if (paramad != null)
        return paramad.a;
    }
    catch (l paramad)
    {
      throw paramad;
    }
    catch (Throwable paramad)
    {
      throw new l("未知的错误");
    }
    return null;
  }

  private static ae b(ad paramad, boolean paramBoolean)
    throws l
  {
    try
    {
      c(paramad);
      if (paramad.c == null);
      for (Proxy localProxy = null; ; localProxy = paramad.c)
        return new ac(paramad.a, paramad.b, localProxy, paramBoolean).a(paramad.d(), paramad.b(), paramad.e());
    }
    catch (l paramad)
    {
      throw paramad;
    }
    catch (Throwable paramad)
    {
      paramad.printStackTrace();
    }
    throw new l("未知的错误");
  }

  public static byte[] b(ad paramad)
    throws l
  {
    try
    {
      paramad = b(paramad, false);
      if (paramad != null)
        return paramad.a;
    }
    catch (l paramad)
    {
      throw paramad;
    }
    catch (Throwable paramad)
    {
      paramad.printStackTrace();
      throw new l("未知的错误");
    }
    return null;
  }

  private static void c(ad paramad)
    throws l
  {
    if (paramad == null)
      throw new l("requeust is null");
    if ((paramad.c() == null) || ("".equals(paramad.c())))
      throw new l("request url is empty");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.z
 * JD-Core Version:    0.6.2
 */