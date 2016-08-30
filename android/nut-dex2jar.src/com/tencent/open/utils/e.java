package com.tencent.open.utils;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import com.tencent.open.a.h;
import java.io.File;

final class e
  implements Runnable
{
  e(c paramc)
  {
  }

  public final void run()
  {
    h.a("AsynLoadImg", "saveFileRunnable:");
    String str1 = s.e(this.a.a);
    str1 = "share_qq_" + str1 + ".jpg";
    String str2 = c.c + str1;
    Object localObject = new File(str2);
    Message localMessage = this.a.e.obtainMessage();
    if (((File)localObject).exists())
    {
      localMessage.arg1 = 0;
      localMessage.obj = str2;
      h.a("AsynLoadImg", "file exists: time:" + (System.currentTimeMillis() - this.a.d));
      this.a.e.sendMessage(localMessage);
      return;
    }
    localObject = c.a(this.a.a);
    boolean bool;
    if (localObject != null)
    {
      bool = c.a((Bitmap)localObject, str1);
      label172: if (!bool)
        break label234;
      localMessage.arg1 = 0;
      localMessage.obj = str2;
    }
    while (true)
    {
      h.a("AsynLoadImg", "file not exists: download time:" + (System.currentTimeMillis() - this.a.d));
      break;
      h.a("AsynLoadImg", "saveFileRunnable:get bmp fail---");
      bool = false;
      break label172;
      label234: localMessage.arg1 = 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.utils.e
 * JD-Core Version:    0.6.2
 */