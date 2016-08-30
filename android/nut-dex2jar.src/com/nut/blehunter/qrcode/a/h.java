package com.nut.blehunter.qrcode.a;

import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

final class h
  implements Camera.PreviewCallback
{
  private static final String a = h.class.getSimpleName();
  private final c b;
  private Handler c;
  private int d;

  h(c paramc)
  {
    this.b = paramc;
  }

  final void a(Handler paramHandler, int paramInt)
  {
    this.c = paramHandler;
    this.d = paramInt;
  }

  public final void onPreviewFrame(byte[] paramArrayOfByte, Camera paramCamera)
  {
    paramCamera = this.b.c;
    Handler localHandler = this.c;
    if ((paramCamera != null) && (localHandler != null))
    {
      localHandler.obtainMessage(this.d, paramCamera.x, paramCamera.y, paramArrayOfByte).sendToTarget();
      this.c = null;
      return;
    }
    Log.d(a, "Got preview callback, but no handler or resolution available");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.a.h
 * JD-Core Version:    0.6.2
 */