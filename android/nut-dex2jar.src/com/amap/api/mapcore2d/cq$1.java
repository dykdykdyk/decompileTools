package com.amap.api.mapcore2d;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;

class cq$1
  implements View.OnClickListener
{
  cq$1(cq paramcq)
  {
  }

  public void onClick(View paramView)
  {
    cq.b(this.a).setImageBitmap(cq.a(this.a));
    if (cq.c(this.a).e() > (int)cq.c(this.a).g() - 2)
      cq.e(this.a).setImageBitmap(cq.d(this.a));
    while (true)
    {
      this.a.a(cq.c(this.a).e() + 1.0F);
      cq.g(this.a).c();
      return;
      cq.e(this.a).setImageBitmap(cq.f(this.a));
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.cq.1
 * JD-Core Version:    0.6.2
 */