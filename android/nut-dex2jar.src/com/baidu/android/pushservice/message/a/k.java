package com.baidu.android.pushservice.message.a;

import android.content.Context;

public class k
{
  private static final String a = k.class.getSimpleName();
  private Context b;

  public k(Context paramContext)
  {
    this.b = paramContext;
  }

  public c a(l paraml)
  {
    switch (k.1.a[paraml.ordinal()])
    {
    default:
      com.baidu.android.pushservice.h.a.e(a, ">>> Unknown msg_type : " + paraml);
      com.baidu.android.pushservice.util.m.a(">>> Unknown msg_type : " + paraml, this.b);
      return null;
    case 1:
    case 2:
      return new g(this.b);
    case 3:
      return new h(this.b);
    case 4:
    case 5:
      return new i(this.b);
    case 6:
      return new e(this.b);
    case 7:
      return new m(this.b);
    case 8:
      return new b(this.b);
    case 9:
      return new a(this.b);
    case 10:
    }
    return new d(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.a.k
 * JD-Core Version:    0.6.2
 */