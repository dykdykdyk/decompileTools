package com.nut.blehunter.dfu;

import android.support.v4.app.ac;
import android.support.v4.app.an;
import android.support.v4.app.v;
import com.nut.blehunter.ui.b.a.d;
import com.nut.blehunter.ui.b.a.e;

final class f extends g
  implements e
{
  private v a;
  private com.nut.blehunter.entity.h b;
  private com.nut.blehunter.ui.b.a.h c;
  private d d;
  private int e;

  public f(v paramv, com.nut.blehunter.entity.h paramh, int paramInt, d paramd)
  {
    this.a = paramv;
    this.b = paramh;
    this.e = paramInt;
    this.c = new com.nut.blehunter.ui.b.a.h();
    this.d = paramd;
    this.c.k = this;
  }

  public final void d_()
  {
    cancel(true);
    this.d = null;
    this.a = null;
    this.c = null;
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
    if (isCancelled())
      return;
    an localan = this.a.d().a();
    localan.a(this.c, "download_progress");
    localan.b();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.dfu.f
 * JD-Core Version:    0.6.2
 */