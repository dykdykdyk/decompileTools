package android.support.v7.widget;

import android.support.v4.view.bl;
import android.support.v4.view.dd;
import java.util.ArrayList;
import java.util.Iterator;

final class by
  implements Runnable
{
  by(bv parambv, ArrayList paramArrayList)
  {
  }

  public final void run()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      er localer = (er)localIterator.next();
      bv localbv = this.b;
      dd localdd = bl.o(localer.a);
      localbv.d.add(localer);
      localdd.a(1.0F).a(localbv.i).a(new ca(localbv, localer, localdd)).b();
    }
    this.a.clear();
    this.b.a.remove(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.by
 * JD-Core Version:    0.6.2
 */