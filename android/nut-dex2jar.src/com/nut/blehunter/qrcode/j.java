package com.nut.blehunter.qrcode;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.zxing.a;
import com.google.zxing.d;
import com.google.zxing.p;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

final class j extends Thread
{
  private final CaptureActivity a;
  private final Map<d, Object> b;
  private Handler c;
  private final CountDownLatch d;

  j(CaptureActivity paramCaptureActivity, Collection<a> paramCollection, Map<d, ?> paramMap, String paramString, p paramp)
  {
    this.a = paramCaptureActivity;
    this.d = new CountDownLatch(1);
    this.b = new EnumMap(d.class);
    if (paramMap != null)
      this.b.putAll(paramMap);
    if (paramCollection != null)
    {
      paramCaptureActivity = paramCollection;
      if (!paramCollection.isEmpty());
    }
    else
    {
      paramCaptureActivity = EnumSet.noneOf(a.class);
      paramCaptureActivity.addAll(g.a);
      paramCaptureActivity.addAll(g.b);
      paramCaptureActivity.addAll(g.c);
      paramCaptureActivity.addAll(g.d);
      paramCaptureActivity.addAll(g.e);
      paramCaptureActivity.addAll(g.f);
    }
    this.b.put(d.c, paramCaptureActivity);
    if (paramString != null)
      this.b.put(d.e, paramString);
    this.b.put(d.j, paramp);
    Log.i("DecodeThread", "Hints: " + this.b);
  }

  final Handler a()
  {
    try
    {
      this.d.await();
      label7: return this.c;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label7;
    }
  }

  public final void run()
  {
    Looper.prepare();
    this.c = new h(this.a, this.b);
    this.d.countDown();
    Looper.loop();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.j
 * JD-Core Version:    0.6.2
 */