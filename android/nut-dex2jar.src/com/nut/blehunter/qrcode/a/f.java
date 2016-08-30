package com.nut.blehunter.qrcode.a;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.os.Handler;
import android.util.Log;
import android.view.Display;
import android.view.SurfaceHolder;
import android.view.WindowManager;
import java.io.IOException;

public final class f
{
  private static final String a = f.class.getSimpleName();
  private final Context b;
  private final c c;
  private Camera d;
  private a e;
  private Rect f;
  private Rect g;
  private boolean h;
  private boolean i;
  private int j = -1;
  private int k;
  private int l;
  private final h m;

  public f(Context paramContext)
  {
    this.b = paramContext;
    this.c = new c(paramContext);
    this.m = new h(this.c);
  }

  private static int b(int paramInt1, int paramInt2)
  {
    int n = paramInt1 * 5 / 8;
    if (n < 240)
      paramInt1 = 240;
    do
    {
      return paramInt1;
      paramInt1 = paramInt2;
    }
    while (n > paramInt2);
    return n;
  }

  public final void a(int paramInt)
  {
    try
    {
      this.j = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(int paramInt1, int paramInt2)
  {
    try
    {
      if (this.h)
      {
        Point localPoint = this.c.b;
        int n = paramInt1;
        if (paramInt1 > localPoint.x)
          n = localPoint.x;
        paramInt1 = paramInt2;
        if (paramInt2 > localPoint.y)
          paramInt1 = localPoint.y;
        paramInt2 = (localPoint.x - n) / 2;
        int i1 = (localPoint.y - paramInt1) / 2;
        this.f = new Rect(paramInt2, i1, paramInt2 + n, i1 + paramInt1);
        Log.d(a, "Calculated manual framing rect: " + this.f);
        this.g = null;
      }
      while (true)
      {
        return;
        this.k = paramInt1;
        this.l = paramInt2;
      }
    }
    finally
    {
    }
  }

  public final void a(Handler paramHandler)
  {
    try
    {
      Camera localCamera = this.d;
      if ((localCamera != null) && (this.i))
      {
        this.m.a(paramHandler, 2131558404);
        localCamera.setOneShotPreviewCallback(this.m);
      }
      return;
    }
    finally
    {
    }
    throw paramHandler;
  }

  public final void a(Display paramDisplay)
  {
    try
    {
      this.c.e = paramDisplay;
      return;
    }
    finally
    {
      paramDisplay = finally;
    }
    throw paramDisplay;
  }

  public final void a(SurfaceHolder paramSurfaceHolder)
    throws IOException
  {
    Object localObject2;
    Object localObject1;
    try
    {
      localObject2 = this.d;
      localObject1 = localObject2;
      if (localObject2 != null)
        break label46;
      localObject1 = com.nut.blehunter.qrcode.a.a.a.a(this.j);
      if (localObject1 == null)
        throw new IOException();
    }
    finally
    {
    }
    this.d = ((Camera)localObject1);
    label46: ((Camera)localObject1).setPreviewDisplay(paramSurfaceHolder);
    if (!this.h)
    {
      this.h = true;
      paramSurfaceHolder = this.c;
      localObject2 = ((Camera)localObject1).getParameters();
      Display localDisplay = ((WindowManager)paramSurfaceHolder.a.getSystemService("window")).getDefaultDisplay();
      Point localPoint = new Point();
      localDisplay.getSize(localPoint);
      paramSurfaceHolder.b = localPoint;
      Log.i("CameraConfiguration", "Screen resolution: " + paramSurfaceHolder.b);
      paramSurfaceHolder.c = d.a((Camera.Parameters)localObject2, paramSurfaceHolder.b);
      Log.i("CameraConfiguration", "Camera resolution: " + paramSurfaceHolder.c);
      if ((this.k > 0) && (this.l > 0))
      {
        a(this.k, this.l);
        this.k = 0;
        this.l = 0;
      }
    }
    paramSurfaceHolder = ((Camera)localObject1).getParameters();
    if (paramSurfaceHolder == null)
      paramSurfaceHolder = null;
    try
    {
      while (true)
      {
        localObject2 = this.c;
        int n = com.nut.blehunter.qrcode.a.a.a.b(this.j);
        ((c)localObject2).d = new Camera.CameraInfo();
        Camera.getCameraInfo(n, ((c)localObject2).d);
        this.c.a((Camera)localObject1, false);
        return;
        paramSurfaceHolder = paramSurfaceHolder.flatten();
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      while (true)
      {
        Log.w(a, "Camera rejected parameters. Setting only minimal safe-mode parameters");
        Log.i(a, "Resetting to saved camera params: " + paramSurfaceHolder);
        if (paramSurfaceHolder != null)
        {
          Camera.Parameters localParameters = ((Camera)localObject1).getParameters();
          localParameters.unflatten(paramSurfaceHolder);
          try
          {
            ((Camera)localObject1).setParameters(localParameters);
            this.c.a((Camera)localObject1, true);
          }
          catch (RuntimeException paramSurfaceHolder)
          {
            Log.w(a, "Camera rejected even safe-mode parameters! No configuration");
          }
        }
      }
    }
  }

  public final void a(boolean paramBoolean)
  {
    boolean bool2 = false;
    while (true)
    {
      try
      {
        Object localObject1 = this.d;
        bool1 = bool2;
        if (localObject1 != null)
        {
          localObject1 = ((Camera)localObject1).getParameters();
          bool1 = bool2;
          if (localObject1 != null)
          {
            localObject1 = ((Camera.Parameters)localObject1).getFlashMode();
            bool1 = bool2;
            if (localObject1 != null)
            {
              if ("on".equals(localObject1))
                break label146;
              bool1 = bool2;
              if ("torch".equals(localObject1))
                break label146;
            }
          }
        }
        if ((paramBoolean != bool1) && (this.d != null))
        {
          if (this.e != null)
            this.e.b();
          localObject1 = this.d;
          Camera.Parameters localParameters = ((Camera)localObject1).getParameters();
          d.b(localParameters, paramBoolean);
          ((Camera)localObject1).setParameters(localParameters);
          if (this.e != null)
            this.e.a();
        }
        return;
      }
      finally
      {
      }
      label146: boolean bool1 = true;
    }
  }

  public final boolean a()
  {
    try
    {
      Camera localCamera = this.d;
      if (localCamera != null)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public final void b()
  {
    try
    {
      if (this.d != null)
      {
        this.d.release();
        this.d = null;
        this.f = null;
        this.g = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void c()
  {
    try
    {
      Camera localCamera = this.d;
      if ((localCamera != null) && (!this.i))
      {
        localCamera.startPreview();
        this.i = true;
        this.e = new a(this.d);
      }
      return;
    }
    finally
    {
    }
  }

  public final void d()
  {
    try
    {
      if (this.e != null)
      {
        this.e.b();
        this.e = null;
      }
      if ((this.d != null) && (this.i))
      {
        this.d.stopPreview();
        this.m.a(null, 0);
        this.i = false;
      }
      return;
    }
    finally
    {
    }
  }

  public final Rect e()
  {
    Rect localRect = null;
    try
    {
      Object localObject2;
      if (this.f == null)
      {
        localObject2 = this.d;
        if (localObject2 != null);
      }
      while (true)
      {
        return localRect;
        localObject2 = this.c.b;
        if (localObject2 != null)
        {
          int n = b(((Point)localObject2).x, 1200);
          int i1 = b(((Point)localObject2).y, 675);
          int i2 = (((Point)localObject2).x - n) / 2;
          int i3 = (((Point)localObject2).y - i1) / 2;
          this.f = new Rect(i2, i3, n + i2, i1 + i3);
          Log.d(a, "Calculated framing rect: " + this.f);
          localRect = this.f;
        }
      }
    }
    finally
    {
    }
  }

  public final Rect f()
  {
    Object localObject3 = null;
    try
    {
      Object localObject1;
      if (this.g == null)
      {
        localObject1 = e();
        if (localObject1 == null)
          localObject1 = localObject3;
      }
      while (true)
      {
        return localObject1;
        Rect localRect = new Rect((Rect)localObject1);
        Point localPoint1 = this.c.c;
        Point localPoint2 = this.c.b;
        localObject1 = localObject3;
        if (localPoint1 != null)
        {
          localObject1 = localObject3;
          if (localPoint2 != null)
          {
            localRect.left = (localRect.left * localPoint1.y / localPoint2.x);
            localRect.right = (localRect.right * localPoint1.y / localPoint2.x);
            localRect.top = (localRect.top * localPoint1.x / localPoint2.y);
            localRect.bottom = (localRect.bottom * localPoint1.x / localPoint2.y);
            this.g = localRect;
            localObject1 = this.g;
          }
        }
      }
    }
    finally
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.a.f
 * JD-Core Version:    0.6.2
 */