package com.nut.blehunter.ui.b.a;

import android.content.Context;
import android.support.v7.widget.dt;
import android.view.LayoutInflater;
import java.util.List;

final class o extends dt<p>
{
  Context c;
  private final LayoutInflater e;

  public o(n paramn, Context paramContext)
  {
    this.c = paramContext;
    this.e = LayoutInflater.from(paramContext);
  }

  public final int b()
  {
    if (n.a(this.d) == null)
      return 0;
    return n.a(this.d).size();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.a.o
 * JD-Core Version:    0.6.2
 */