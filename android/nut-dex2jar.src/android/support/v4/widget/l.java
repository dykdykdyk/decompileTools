package android.support.v4.widget;

import android.database.DataSetObserver;

final class l extends DataSetObserver
{
  private l(j paramj)
  {
  }

  public final void onChanged()
  {
    this.a.a = true;
    this.a.notifyDataSetChanged();
  }

  public final void onInvalidated()
  {
    this.a.a = false;
    this.a.notifyDataSetInvalidated();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.l
 * JD-Core Version:    0.6.2
 */