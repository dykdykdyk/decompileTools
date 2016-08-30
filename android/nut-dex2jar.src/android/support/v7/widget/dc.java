package android.support.v7.widget;

import android.database.DataSetObserver;
import android.widget.PopupWindow;

final class dc extends DataSetObserver
{
  private dc(cu paramcu)
  {
  }

  public final void onChanged()
  {
    if (this.a.c.isShowing())
      this.a.b();
  }

  public final void onInvalidated()
  {
    this.a.d();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.dc
 * JD-Core Version:    0.6.2
 */