package android.support.v4.widget;

import android.database.ContentObserver;
import android.os.Handler;

final class k extends ContentObserver
{
  public k(j paramj)
  {
    super(new Handler());
  }

  public final boolean deliverSelfNotifications()
  {
    return true;
  }

  public final void onChange(boolean paramBoolean)
  {
    this.a.b();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.k
 * JD-Core Version:    0.6.2
 */