package com.astuetz;

import android.database.DataSetObserver;

final class f extends DataSetObserver
{
  boolean a = false;

  private f(PagerSlidingTabStrip paramPagerSlidingTabStrip)
  {
  }

  public final void onChanged()
  {
    this.b.a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.astuetz.f
 * JD-Core Version:    0.6.2
 */