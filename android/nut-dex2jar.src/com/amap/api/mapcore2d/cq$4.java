package com.amap.api.mapcore2d;

import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;

class cq$4
  implements View.OnTouchListener
{
  cq$4(cq paramcq)
  {
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (cq.c(this.a).e() <= cq.c(this.a).h());
    do
    {
      return false;
      if (paramMotionEvent.getAction() == 0)
      {
        cq.b(this.a).setImageBitmap(cq.j(this.a));
        return false;
      }
    }
    while (paramMotionEvent.getAction() != 1);
    cq.b(this.a).setImageBitmap(cq.a(this.a));
    try
    {
      cq.c(this.a).b(r.c());
      return false;
    }
    catch (RemoteException paramView)
    {
      cz.a(paramView, "ZoomControllerView", "onTouch");
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.cq.4
 * JD-Core Version:    0.6.2
 */