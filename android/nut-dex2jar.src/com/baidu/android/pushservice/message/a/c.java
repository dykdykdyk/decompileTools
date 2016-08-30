package com.baidu.android.pushservice.message.a;

import android.content.Context;
import com.baidu.android.pushservice.h.a;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class c
{
  private static final String b = c.class.getSimpleName();
  protected Context a;

  public c(Context paramContext)
  {
    this.a = paramContext;
  }

  public abstract int a(String paramString1, String paramString2, int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2);

  protected boolean a(byte[] paramArrayOfByte)
  {
    boolean bool = false;
    try
    {
      paramArrayOfByte = new JSONObject(new String(paramArrayOfByte));
      if (!paramArrayOfByte.isNull("bccs_fb"))
      {
        i = Integer.parseInt(paramArrayOfByte.getString("bccs_fb"));
        if (i == 1)
          bool = true;
        return bool;
      }
    }
    catch (JSONException paramArrayOfByte)
    {
      while (true)
      {
        a.e(b, "Message parsing feedback fail:\r\n" + paramArrayOfByte.getMessage());
        int i = 0;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.a.c
 * JD-Core Version:    0.6.2
 */