package com.nut.blehunter.qrcode;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.zxing.ReaderException;
import com.google.zxing.c;
import com.google.zxing.common.j;
import com.google.zxing.d;
import com.google.zxing.g;
import com.google.zxing.k;
import com.nut.blehunter.qrcode.a.f;
import java.io.ByteArrayOutputStream;
import java.util.Map;

final class h extends Handler
{
  private static final String a = h.class.getSimpleName();
  private final CaptureActivity b;
  private final com.google.zxing.h c = new com.google.zxing.h();
  private boolean d = true;

  h(CaptureActivity paramCaptureActivity, Map<d, Object> paramMap)
  {
    this.c.a(paramMap);
    this.b = paramCaptureActivity;
  }

  public final void handleMessage(Message paramMessage)
  {
    if (!this.d)
      return;
    Object localObject1;
    int k;
    int m;
    long l1;
    switch (paramMessage.what)
    {
    default:
      return;
    case 2131558404:
      localObject1 = (byte[])paramMessage.obj;
      k = paramMessage.arg1;
      m = paramMessage.arg2;
      l1 = System.currentTimeMillis();
      paramMessage = this.b.m.f();
      if (paramMessage == null)
      {
        localObject1 = null;
        label88: if (localObject1 == null)
          break label458;
      }
      break;
    case 2131558412:
    }
    label458: for (paramMessage = new c(new j((g)localObject1)); ; paramMessage = null)
    {
      Object localObject2;
      try
      {
        localObject2 = this.c;
        if (((com.google.zxing.h)localObject2).a == null)
          ((com.google.zxing.h)localObject2).a(null);
        paramMessage = ((com.google.zxing.h)localObject2).a(paramMessage);
        this.c.a();
        localObject2 = this.b.n;
        if (paramMessage != null)
        {
          long l2 = System.currentTimeMillis();
          Log.d(a, "Found barcode in " + (l2 - l1) + " ms");
          if (localObject2 == null)
            break;
          paramMessage = Message.obtain((Handler)localObject2, 2131558406, paramMessage);
          localObject2 = new Bundle();
          Object localObject3 = ((k)localObject1).b();
          int i = ((g)localObject1).a / 2;
          localObject3 = Bitmap.createBitmap((int[])localObject3, 0, i, i, ((g)localObject1).b / 2, Bitmap.Config.ARGB_8888);
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          ((Bitmap)localObject3).compress(Bitmap.CompressFormat.JPEG, 50, localByteArrayOutputStream);
          ((Bundle)localObject2).putByteArray("barcode_bitmap", localByteArrayOutputStream.toByteArray());
          ((Bundle)localObject2).putFloat("barcode_scaled_factor", i / ((g)localObject1).a);
          paramMessage.setData((Bundle)localObject2);
          paramMessage.sendToTarget();
          return;
          localObject2 = new byte[localObject1.length];
          i = 0;
          while (i < m)
          {
            int j = 0;
            while (j < k)
            {
              localObject2[(j * m + m - i - 1)] = localObject1[(i * k + j)];
              j += 1;
            }
            i += 1;
          }
          localObject1 = new k((byte[])localObject2, m, k, paramMessage.left, paramMessage.top, paramMessage.width(), paramMessage.height());
          break label88;
        }
      }
      catch (ReaderException paramMessage)
      {
        while (true)
        {
          this.c.a();
          paramMessage = null;
        }
      }
      finally
      {
        this.c.a();
      }
      if (localObject2 == null)
        break;
      Message.obtain((Handler)localObject2, 2131558405).sendToTarget();
      return;
      this.d = false;
      Looper.myLooper().quit();
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.h
 * JD-Core Version:    0.6.2
 */