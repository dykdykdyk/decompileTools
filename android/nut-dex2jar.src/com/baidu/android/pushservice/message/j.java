package com.baidu.android.pushservice.message;

import android.content.Context;
import com.baidu.android.pushservice.h.a;

public class j extends c
{
  private static final String b = j.class.getSimpleName();

  public j(Context paramContext)
  {
    super(paramContext);
  }

  public int a(e parame)
  {
    parame.f = true;
    a.b(b, "handleMessage: server heart beat type - " + parame.a);
    return 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.j
 * JD-Core Version:    0.6.2
 */