package com.baidu.android.pushservice.message.a;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.android.pushservice.util.m;

public class i extends c
{
  private static final String b = i.class.getSimpleName();

  public i(Context paramContext)
  {
    super(paramContext);
  }

  public int a(String paramString1, String paramString2, int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    paramString1 = j.a(this.a, paramString2, paramString1, paramArrayOfByte2);
    if ((paramString1 != null) && (!TextUtils.isEmpty(paramString1.mTitle)) && (!TextUtils.isEmpty(paramString1.mDescription)) && (!TextUtils.isEmpty(paramString1.mUrl)))
    {
      if ((f.a(this.a, paramString1)) && (m.e(this.a, this.a.getPackageName())))
      {
        a.c(b, ">>> Show pMsg Notification!");
        m.a(">>> Show pMsg Notification!", this.a);
        f.a(this.a, paramString1, paramString2);
        return 1;
      }
      paramString1 = ">>> Don't Show pMsg Notification! --- IsBaiduApp = " + m.e(this.a, this.a.getPackageName());
      a.c(b, paramString1);
      m.a(paramString1, this.a);
      return 0;
    }
    a.e(b, ">>> pMsg JSON parsing error!");
    m.a(">>> pMsg JSON parsing error!", this.a);
    return 2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.a.i
 * JD-Core Version:    0.6.2
 */