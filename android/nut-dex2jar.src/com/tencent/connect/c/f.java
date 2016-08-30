package com.tencent.connect.c;

import android.graphics.Bitmap;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import com.tencent.open.a.h;
import com.tencent.open.utils.s;

public final class f
  implements Runnable
{
  public f(String paramString, Handler paramHandler)
  {
  }

  public final void run()
  {
    Object localObject1 = d.b(this.a);
    if (localObject1 != null)
    {
      Object localObject2 = Environment.getExternalStorageDirectory() + "/tmp/";
      String str = s.e(this.a);
      str = "share2qq_temp" + str + ".jpg";
      if (!d.a(this.a))
        h.b("openSDK_LOG.AsynScaleCompressImage", "not out of bound,not compress!");
      for (localObject1 = this.a; ; localObject1 = d.a((Bitmap)localObject1, (String)localObject2, str))
      {
        h.b("openSDK_LOG.AsynScaleCompressImage", "-->destFilePath: " + (String)localObject1);
        if (localObject1 == null)
          break;
        localObject2 = this.b.obtainMessage(101);
        ((Message)localObject2).obj = localObject1;
        this.b.sendMessage((Message)localObject2);
        return;
        h.b("openSDK_LOG.AsynScaleCompressImage", "out of bound,compress!");
      }
    }
    localObject1 = this.b.obtainMessage(102);
    ((Message)localObject1).arg1 = 3;
    this.b.sendMessage((Message)localObject1);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.c.f
 * JD-Core Version:    0.6.2
 */