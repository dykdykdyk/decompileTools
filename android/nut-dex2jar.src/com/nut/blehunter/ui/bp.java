package com.nut.blehunter.ui;

import android.support.v7.widget.dt;
import android.view.LayoutInflater;
import com.nut.blehunter.b.b;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.PositionRecord;
import java.util.ArrayList;

final class bp extends dt<br>
{
  ArrayList<Nut> c;
  private final LayoutInflater e;

  public bp(MainActivity paramMainActivity)
  {
    this.e = LayoutInflater.from(paramMainActivity);
  }

  private void a(Nut paramNut)
  {
    if ((paramNut == null) || (paramNut.r == null))
      return;
    new b(this.d, paramNut.r.e, paramNut.r.d, new bq(this, paramNut));
  }

  public final int b()
  {
    if (this.c != null)
      return this.c.size();
    return 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.bp
 * JD-Core Version:    0.6.2
 */