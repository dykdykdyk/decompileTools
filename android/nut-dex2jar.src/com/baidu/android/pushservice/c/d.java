package com.baidu.android.pushservice.c;

import android.content.Context;

public class d
{
  public h a;
  public i b;
  public f c;
  private c d;

  public d(c paramc)
  {
    this.d = paramc;
  }

  public static d a(Context paramContext, String paramString)
  {
    Object localObject = b.a(paramContext).d(paramString);
    if ((localObject != null) && (((h)localObject).c != null))
    {
      paramContext = new d(c.a);
      paramContext.a = ((h)localObject);
      return paramContext;
    }
    localObject = j.a(paramContext).d(paramString);
    if ((localObject != null) && (((i)localObject).c() != null))
    {
      paramContext = new d(c.b);
      paramContext.b = ((i)localObject);
      return paramContext;
    }
    if ((k)l.a(paramContext).b(paramString) != null)
      return new d(c.c);
    paramContext = (f)g.a(paramContext).b(paramString);
    if (paramContext != null)
    {
      paramString = new d(c.d);
      paramString.c = paramContext;
      return paramString;
    }
    return new d(c.e);
  }

  public c a()
  {
    return this.d;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.c.d
 * JD-Core Version:    0.6.2
 */