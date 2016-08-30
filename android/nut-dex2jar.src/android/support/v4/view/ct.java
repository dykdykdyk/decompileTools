package android.support.v4.view;

import android.database.DataSetObserver;

final class ct extends DataSetObserver
{
  private ct(ViewPager paramViewPager)
  {
  }

  public final void onChanged()
  {
    this.a.a();
  }

  public final void onInvalidated()
  {
    this.a.a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ct
 * JD-Core Version:    0.6.2
 */