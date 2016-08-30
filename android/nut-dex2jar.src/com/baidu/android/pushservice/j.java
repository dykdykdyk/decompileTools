package com.baidu.android.pushservice;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.e.ab;
import com.baidu.android.pushservice.util.i;

public final class j
{
  private static j a;
  private String b = null;
  private String c = null;
  private Thread d = null;
  private boolean e;
  private Context f;

  private j(Context paramContext)
  {
    this.c = i.a(paramContext, "com.baidu.pushservice.channel_token_rsa");
    this.b = PushSettings.a(paramContext);
    this.e = false;
    this.f = paramContext;
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

  public final void a(Context paramContext, boolean paramBoolean)
  {
    if ((this.d == null) || (!this.d.isAlive()))
    {
      paramContext = new ab(paramContext);
      if (!paramBoolean)
        paramContext.a(0);
      this.d = new Thread(paramContext);
      this.d.start();
    }
  }

  public final void a(String paramString1, String paramString2)
  {
    try
    {
      this.b = paramString1;
      this.c = paramString2;
      PushSettings.a(this.f, paramString1);
      i.a(this.f, "com.baidu.pushservice.channel_token_rsa", paramString2);
      return;
    }
    finally
    {
      paramString1 = finally;
    }
    throw paramString1;
  }

  public final void a(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }

  public final boolean a()
  {
    return this.e;
  }

  public final String b()
  {
    return this.b;
  }

  public final String c()
  {
    return this.c;
  }

  public final boolean d()
  {
    return (!TextUtils.isEmpty(this.b)) && (!TextUtils.isEmpty(this.c));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.j
 * JD-Core Version:    0.6.2
 */