package com.baidu.android.pushservice.message.a;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.util.m;
import org.json.JSONException;
import org.json.JSONObject;

public class b extends c
{
  private static final String b = b.class.getSimpleName();
  private Context c;

  public b(Context paramContext)
  {
    super(paramContext);
    this.c = paramContext.getApplicationContext();
  }

  public int a(String paramString1, String paramString2, int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    Object localObject = null;
    try
    {
      paramString1 = new JSONObject(new String(paramArrayOfByte2));
    }
    catch (JSONException paramArrayOfByte1)
    {
      try
      {
        paramArrayOfByte1 = paramString1.getString("action");
        paramInt = 1;
        if ((paramInt != 0) && (!TextUtils.isEmpty(paramArrayOfByte1)))
          if (!paramArrayOfByte1.equalsIgnoreCase("push.NOTIFICATION"));
        while (true)
        {
          try
          {
            String str = paramString1.getString("description");
            if (paramString1.isNull("title"))
              break label335;
            paramArrayOfByte1 = paramString1.getString("title");
            if (paramString1.isNull("iconUrl"))
              break label329;
            paramArrayOfByte2 = paramString1.getString("iconUrl");
            if (paramString1.isNull("url"))
              break label324;
            paramString1 = paramString1.getString("url");
            f.a(this.a, paramArrayOfByte1, str, paramArrayOfByte2, paramString1, paramString2);
            paramString1 = localObject;
            if (paramString1 != null)
            {
              paramString1.setFlags(32);
              this.a.sendBroadcast(paramString1);
            }
            return 0;
            paramArrayOfByte1 = paramArrayOfByte1;
            paramString1 = null;
            com.baidu.android.pushservice.h.b.b(b, "Supper message parsing action Fail:\r\n" + paramArrayOfByte1.getMessage(), this.c);
            paramArrayOfByte1 = null;
            paramInt = 0;
          }
          catch (JSONException paramString1)
          {
            com.baidu.android.pushservice.h.b.b(b, "Supper message parsing notification action Fail:\r\n" + paramString1.getMessage(), this.c);
            paramString1 = localObject;
            continue;
          }
          try
          {
            paramString1 = paramString1.getString("message");
            paramString2 = new Intent(paramArrayOfByte1);
            paramString2.putExtra("message", paramString1);
            paramString1 = paramString2;
          }
          catch (JSONException paramString1)
          {
            while (true)
            {
              a.e(b, "Supper message parsing default action Fail:\r\n" + paramString1.getMessage());
              paramString1 = null;
            }
          }
          paramString1 = new Intent("com.baidu.pushservice.action.supper.MESSAGE");
          paramString1.putExtra("message", paramArrayOfByte2);
          m.a(">>> Deliver baidu supper msg with g action: com.baidu.pushservice.action.supper.MESSAGE", this.a);
        }
      }
      catch (JSONException paramArrayOfByte1)
      {
        while (true)
        {
          continue;
          label324: paramString1 = null;
          continue;
          label329: paramArrayOfByte2 = null;
          continue;
          label335: paramArrayOfByte1 = null;
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.a.b
 * JD-Core Version:    0.6.2
 */