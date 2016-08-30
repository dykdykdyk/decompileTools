package com.baidu.android.pushservice.message;

import android.content.Context;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.j;
import com.baidu.android.pushservice.util.m;
import org.json.JSONException;
import org.json.JSONObject;

public class b extends c
{
  private static final String b = b.class.getSimpleName();

  public b(Context paramContext)
  {
    super(paramContext);
  }

  public int a(e parame)
  {
    int i = -1;
    parame = new String(parame.d);
    a.b(b, "handleMessage MSG_ID_HANDSHAKE : " + parame);
    try
    {
      parame = new JSONObject(parame);
      if (parame != null)
        i = parame.optInt("ret", -1);
      a.b(b, "handleMessage MSG_ID_HANDSHAKE : result = " + i);
      if (i == 0)
      {
        com.baidu.android.pushservice.e.b.a(this.a);
        return i;
      }
    }
    catch (JSONException parame)
    {
      do
      {
        while (true)
        {
          a.e(b, "error : " + parame.getMessage());
          parame = null;
        }
        if (i == 5003)
        {
          com.baidu.android.pushservice.e.b.a(this.a);
          return i;
        }
      }
      while (i != 2002);
      j.a(this.a).a(null, null);
      m.i(this.a);
    }
    return i;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.b
 * JD-Core Version:    0.6.2
 */