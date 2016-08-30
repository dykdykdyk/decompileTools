package com.sina.weibo.sdk.component;

import android.content.Context;
import android.text.TextUtils;
import com.sina.weibo.sdk.a.c;
import java.util.HashMap;
import java.util.Map;

public final class j
{
  private static j a;
  private Context b;
  private Map<String, c> c;
  private Map<String, r> d;

  private j(Context paramContext)
  {
    this.b = paramContext;
    this.c = new HashMap();
    this.d = new HashMap();
  }

  public static j a(Context paramContext)
  {
    try
    {
      if (a == null)
        a = new j(paramContext);
      paramContext = a;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  public final c a(String paramString)
  {
    try
    {
      boolean bool = TextUtils.isEmpty(paramString);
      if (bool);
      for (paramString = null; ; paramString = (c)this.c.get(paramString))
        return paramString;
    }
    finally
    {
    }
    throw paramString;
  }

  public final void a(String paramString, c paramc)
  {
    try
    {
      boolean bool = TextUtils.isEmpty(paramString);
      if ((bool) || (paramc == null));
      while (true)
      {
        return;
        this.c.put(paramString, paramc);
      }
    }
    finally
    {
    }
    throw paramString;
  }

  public final void a(String paramString, r paramr)
  {
    try
    {
      boolean bool = TextUtils.isEmpty(paramString);
      if ((bool) || (paramr == null));
      while (true)
      {
        return;
        this.d.put(paramString, paramr);
      }
    }
    finally
    {
    }
    throw paramString;
  }

  public final void b(String paramString)
  {
    try
    {
      boolean bool = TextUtils.isEmpty(paramString);
      if (bool);
      while (true)
      {
        return;
        this.c.remove(paramString);
      }
    }
    finally
    {
    }
    throw paramString;
  }

  public final r c(String paramString)
  {
    try
    {
      boolean bool = TextUtils.isEmpty(paramString);
      if (bool);
      for (paramString = null; ; paramString = (r)this.d.get(paramString))
        return paramString;
    }
    finally
    {
    }
    throw paramString;
  }

  public final void d(String paramString)
  {
    try
    {
      boolean bool = TextUtils.isEmpty(paramString);
      if (bool);
      while (true)
      {
        return;
        this.d.remove(paramString);
      }
    }
    finally
    {
    }
    throw paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.component.j
 * JD-Core Version:    0.6.2
 */