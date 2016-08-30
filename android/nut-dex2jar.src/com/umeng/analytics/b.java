package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;
import u.aly.ct;

public final class b
{
  private static final s a = new s();

  public static s a()
  {
    return a;
  }

  public static void a(Context paramContext)
  {
    s locals = a;
    if (paramContext == null)
    {
      ct.d("unexpected null context in onPause");
      return;
    }
    if (a.e)
      locals.a.b(paramContext.getClass().getName());
    try
    {
      if (!locals.e)
        locals.a(paramContext);
      y.a(new w(locals, paramContext));
      return;
    }
    catch (Exception paramContext)
    {
      ct.b("Exception occurred in Mobclick.onRause(). ", paramContext);
    }
  }

  public static void a(Context paramContext, String paramString)
  {
    a.a(paramContext, paramString, null, -1L);
  }

  public static void a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      s locals = a;
      if (!a.e);
      try
      {
        locals.a.a(paramString);
        return;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return;
      }
    }
    ct.d("pageName is null or empty");
  }

  public static void b(Context paramContext)
  {
    if (paramContext == null)
    {
      ct.d("unexpected null context in onResume");
      return;
    }
    s locals = a;
    if (paramContext == null)
    {
      ct.d("unexpected null context in onResume");
      return;
    }
    if (a.e)
      locals.a.a(paramContext.getClass().getName());
    try
    {
      if (!locals.e)
        locals.a(paramContext);
      y.a(new v(locals, paramContext));
      return;
    }
    catch (Exception paramContext)
    {
      ct.b("Exception occurred in Mobclick.onResume(). ", paramContext);
    }
  }

  public static void b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      s locals = a;
      if (!a.e);
      try
      {
        locals.a.b(paramString);
        return;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return;
      }
    }
    ct.d("pageName is null or empty");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.umeng.analytics.b
 * JD-Core Version:    0.6.2
 */