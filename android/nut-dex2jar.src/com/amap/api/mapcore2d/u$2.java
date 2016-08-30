package com.amap.api.mapcore2d;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import com.amap.api.maps2d.model.CameraPosition;

class u$2
  implements View.OnTouchListener
{
  u$2(u paramu)
  {
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
      u.b(this.a).setImageBitmap(u.a(this.a));
    while (true)
    {
      return false;
      if (paramMotionEvent.getAction() == 1)
        try
        {
          u.b(this.a).setImageBitmap(u.c(this.a));
          paramView = u.d(this.a).f();
          u.d(this.a).b(r.a(new CameraPosition(paramView.target, paramView.zoom, 0.0F, 0.0F)));
        }
        catch (Exception paramView)
        {
          cz.a(paramView, "CompassView", "onTouch");
        }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.u.2
 * JD-Core Version:    0.6.2
 */