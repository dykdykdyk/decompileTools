package com.nut.blehunter.ui;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

final class h extends Handler
{
  private final WeakReference<b> a;

  public h(b paramb)
  {
    this.a = new WeakReference(paramb);
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    b localb = (b)this.a.get();
    if (localb != null)
      localb.a(paramMessage);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.h
 * JD-Core Version:    0.6.2
 */