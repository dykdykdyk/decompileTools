package com.sina.weibo.sdk.c;

import android.os.Environment;
import java.io.File;

final class j
  implements Runnable
{
  j(i parami, String paramString)
  {
  }

  public final void run()
  {
    String str2 = null;
    String str1 = "";
    if (d.a() != null)
      str1 = com.sina.weibo.sdk.d.j.a(d.a()) + "/";
    if (Environment.getExternalStorageState().equals("mounted"));
    for (File localFile = Environment.getExternalStorageDirectory(); ; localFile = null)
    {
      if (localFile != null)
        str2 = localFile.toString();
      c.a(str2 + "/sina/weibo/.applogs/" + str1 + "app_logs" + ".txt", this.b, true);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.c.j
 * JD-Core Version:    0.6.2
 */