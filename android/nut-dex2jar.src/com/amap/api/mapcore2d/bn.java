package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.view.MotionEvent;
import java.lang.reflect.Method;

abstract class bn
{
  static float j = 1.0F;
  private static Method p;
  private static Method q;
  private static boolean r = false;
  private static boolean s = false;
  bn.b a;
  int b = 0;
  Matrix c = new Matrix();
  Matrix d = new Matrix();
  PointF e = new PointF();
  PointF f = new PointF();
  PointF g = new PointF();
  float h = 1.0F;
  float i = 1.0F;
  boolean k = false;
  boolean l = false;
  boolean m = false;
  public int n = 0;
  public long o = 0L;

  public static bn.a a(Context paramContext, bn.b paramb)
  {
    paramContext = new bn.a();
    paramContext.a = paramb;
    return paramContext;
  }

  private static void b(MotionEvent paramMotionEvent)
  {
    if (s);
    while (true)
    {
      return;
      s = true;
      try
      {
        p = paramMotionEvent.getClass().getMethod("getX", new Class[] { Integer.TYPE });
        q = paramMotionEvent.getClass().getMethod("getY", new Class[] { Integer.TYPE });
        if ((p != null) && (q != null))
        {
          r = true;
          return;
        }
      }
      catch (Exception paramMotionEvent)
      {
        cz.a(paramMotionEvent, "MutiTouchGestureDetector", "checkSDKForMuti");
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bn
 * JD-Core Version:    0.6.2
 */