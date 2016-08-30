package com.baidu.android.pushservice.message;

import android.content.Context;

public class a
{
  private static final String a = a.class.getSimpleName();
  private Context b;

  public a(Context paramContext)
  {
    this.b = paramContext;
  }

  public c a(g paramg)
  {
    switch (a.1.a[paramg.ordinal()])
    {
    default:
      com.baidu.android.pushservice.h.a.e(a, "handleMessage invalid messageType");
      return null;
    case 1:
      return new b(this.b);
    case 2:
    case 3:
      return new j(this.b);
    case 4:
      com.baidu.android.pushservice.h.a.b(a, "handleMessage MSG_ID_HEARTBEAT_CLIENT");
      return null;
    case 5:
      com.baidu.android.pushservice.h.a.b(a, "handleMessage MSG_ID_TIMY_HEARTBEAT_CLIENT");
      return null;
    case 6:
    }
    return new h(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.a
 * JD-Core Version:    0.6.2
 */