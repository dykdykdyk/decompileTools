package com.amap.api.mapcore2d;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;

class cq$2
  implements View.OnClickListener
{
  cq$2(cq paramcq)
  {
  }

  public void onClick(View paramView)
  {
    cq.e(this.a).setImageBitmap(cq.f(this.a));
    this.a.a(cq.c(this.a).e() - 1.0F);
    if (cq.c(this.a).e() < (int)cq.c(this.a).h() + 2)
      cq.b(this.a).setImageBitmap(cq.h(this.a));
    while (true)
    {
      cq.g(this.a).d();
      return;
      cq.b(this.a).setImageBitmap(cq.a(this.a));
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.cq.2
 * JD-Core Version:    0.6.2
 */