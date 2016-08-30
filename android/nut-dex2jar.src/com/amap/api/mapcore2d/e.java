package com.amap.api.mapcore2d;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import com.amap.api.maps2d.AMap.CancelableCallback;
import com.amap.api.maps2d.AMap.OnCameraChangeListener;
import com.amap.api.maps2d.AMap.OnMapLoadedListener;
import com.amap.api.maps2d.AMap.OnMapScreenShotListener;
import com.amap.api.maps2d.model.CameraPosition;
import com.amap.api.maps2d.model.LatLng;

class e extends Handler
{
  String a = "handleMessage";

  e(b paramb)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    if ((paramMessage == null) || (this.b.a == null) || (this.b.a.c == null));
    label612: 
    do
    {
      do
      {
        do
        {
          while (true)
          {
            return;
            try
            {
              switch (paramMessage.what)
              {
              case 2:
                Log.w("amapsdk", "Key验证失败：[" + dc.b + "]");
                return;
              case 15:
              case 11:
              case 3:
              case 16:
              case 17:
              case 10:
              case 13:
              case 19:
              case 4:
              case 5:
              case 6:
              case 7:
              case 8:
              case 9:
              case 12:
              case 14:
              case 18:
              }
            }
            catch (Throwable paramMessage)
            {
              cz.a(paramMessage, "AMapDelegateImpGLSurfaceView", "handle_handleMessage");
              return;
            }
            b.b(this.b);
            return;
            if (b.c(this.b) != null)
            {
              b.c(this.b).onMapLoaded();
              return;
              Object localObject;
              try
              {
                localObject = (ax)paramMessage.obj;
                paramMessage = (Message)localObject;
                if (localObject == null)
                  paramMessage = new ax(false, false);
                dn.a(b.d(this.b), v.a(paramMessage.a()));
                return;
              }
              catch (Throwable paramMessage)
              {
                cz.a(paramMessage, "AMapDelegateImpGLSurfaceView", this.a);
                return;
              }
              try
              {
                paramMessage = (Bitmap)paramMessage.obj;
                if (!paramMessage.isRecycled())
                {
                  paramMessage = Bitmap.createBitmap(paramMessage);
                  if (paramMessage != null)
                  {
                    localObject = new Canvas(paramMessage);
                    if (b.e(this.b) != null)
                      b.e(this.b).draw((Canvas)localObject);
                    if ((b.f(this.b) != null) && (b.g(this.b) != null))
                    {
                      Bitmap localBitmap = b.f(this.b).getDrawingCache(true);
                      if (localBitmap != null)
                      {
                        int i = b.f(this.b).getLeft();
                        int j = b.f(this.b).getTop();
                        ((Canvas)localObject).drawBitmap(localBitmap, i, j, new Paint());
                      }
                    }
                    if (b.h(this.b) != null)
                      b.h(this.b).onMapScreenShot(paramMessage);
                    this.b.destroyDrawingCache();
                    b.a(this.b, null);
                    return;
                  }
                }
              }
              catch (Exception paramMessage)
              {
                while (true)
                {
                  cz.a(paramMessage, "AMapDelegateImpGLSurfaceView", this.a);
                  paramMessage = null;
                  continue;
                  if (b.h(this.b) != null)
                    b.h(this.b).onMapScreenShot(null);
                }
              }
            }
          }
          paramMessage = b.i(this.b);
          if (b.j(this.b) != null)
            b.a(this.b, true, paramMessage);
          if ((v.h == null) || (v.h.trim().length() == 0))
          {
            if ((paramMessage.zoom < 10.0F) || (cy.a(paramMessage.target.latitude, paramMessage.target.longitude)))
              break label612;
            b.e(this.b).setVisibility(8);
          }
          while (true)
          {
            if (b.k(this.b) != null)
            {
              b.a(this.b, true);
              b.k(this.b).onFinish();
              b.a(this.b, false);
            }
            if (b.l(this.b))
              break;
            b.a(this.b, null);
            return;
            b.e(this.b).setVisibility(0);
          }
          b.b(this.b, false);
          return;
        }
        while (b.j(this.b) == null);
        paramMessage = new CameraPosition(b.m(this.b), this.b.e(), 0.0F, 0.0F);
        b.j(this.b).onCameraChange(paramMessage);
        return;
      }
      while ((b.n(this.b) == null) || (!b.n(this.b).g()));
      switch (b.n(this.b).h())
      {
      case 2:
        paramMessage = r.a(new ak(b.n(this.b).b(), b.n(this.b).c()), b.n(this.b).d(), b.n(this.b).e(), b.n(this.b).f());
        if (b.n(this.b).a())
          paramMessage.i = true;
        this.b.e.a(paramMessage);
        return;
      }
    }
    while ((this.b.a == null) || (this.b.a.d == null));
    this.b.a.d.a();
    return;
    return;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.e
 * JD-Core Version:    0.6.2
 */