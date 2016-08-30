package android.support.v7.widget;

import android.database.Observable;
import java.util.ArrayList;

public final class du extends Observable<dv>
{
  public final void a(int paramInt)
  {
    int i = this.mObservers.size() - 1;
    while (i >= 0)
    {
      ((dv)this.mObservers.get(i)).a(paramInt);
      i -= 1;
    }
  }

  public final boolean a()
  {
    return !this.mObservers.isEmpty();
  }

  public final void b()
  {
    int i = this.mObservers.size() - 1;
    while (i >= 0)
    {
      ((dv)this.mObservers.get(i)).a();
      i -= 1;
    }
  }

  public final void b(int paramInt)
  {
    int i = this.mObservers.size() - 1;
    while (i >= 0)
    {
      ((dv)this.mObservers.get(i)).b(paramInt);
      i -= 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.du
 * JD-Core Version:    0.6.2
 */