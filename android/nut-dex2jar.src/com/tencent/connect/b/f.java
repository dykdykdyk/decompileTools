package com.tencent.connect.b;

import android.app.Dialog;
import android.view.View;
import com.tencent.tauth.b;

final class f extends h
{
  f(d paramd, Dialog paramDialog, b paramb, Object paramObject)
  {
    super(paramd, paramDialog);
  }

  public final void onClick(View paramView)
  {
    if ((this.d != null) && (this.d.isShowing()))
      this.d.dismiss();
    if (this.a != null)
      this.a.a(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.b.f
 * JD-Core Version:    0.6.2
 */