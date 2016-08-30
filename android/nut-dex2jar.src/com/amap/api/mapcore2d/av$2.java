package com.amap.api.mapcore2d;

import android.location.Location;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import com.amap.api.maps2d.model.LatLng;

class av$2
  implements View.OnTouchListener
{
  av$2(av paramav)
  {
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (!av.a(this.a));
    while (true)
    {
      return false;
      if (paramMotionEvent.getAction() == 0)
      {
        av.c(this.a).setImageBitmap(av.b(this.a));
        return false;
      }
      if (paramMotionEvent.getAction() == 1)
        try
        {
          av.c(this.a).setImageBitmap(av.d(this.a));
          av.e(this.a).c(true);
          paramView = av.e(this.a).o();
          if (paramView != null)
          {
            paramMotionEvent = new LatLng(paramView.getLatitude(), paramView.getLongitude());
            av.e(this.a).a(paramView);
            av.e(this.a).a(r.a(paramMotionEvent, av.e(this.a).e()));
            return false;
          }
        }
        catch (Exception paramView)
        {
          cz.a(paramView, "LocationView", "onTouch");
        }
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.av.2
 * JD-Core Version:    0.6.2
 */