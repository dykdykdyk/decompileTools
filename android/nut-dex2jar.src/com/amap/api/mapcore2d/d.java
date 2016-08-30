package com.amap.api.mapcore2d;

import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import com.amap.api.maps2d.AMap.OnMapTouchListener;

class d extends Handler
{
  String a = "onTouchHandler";

  d(b paramb)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    try
    {
      if (b.a(this.b) != null)
        b.a(this.b).onTouch((MotionEvent)paramMessage.obj);
      return;
    }
    catch (Throwable paramMessage)
    {
      cz.a(paramMessage, "AMapDelegateImpGLSurfaceView", this.a);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.d
 * JD-Core Version:    0.6.2
 */