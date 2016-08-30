package android.support.v7.widget;

import android.support.v4.view.bl;
import android.support.v4.view.dd;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;

final class bw
  implements Runnable
{
  bw(bv parambv, ArrayList paramArrayList)
  {
  }

  public final void run()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (cf)localIterator.next();
      bv localbv = this.b;
      er localer = ((cf)localObject).a;
      int k = ((cf)localObject).b;
      int i = ((cf)localObject).c;
      int m = ((cf)localObject).d;
      int j = ((cf)localObject).e;
      localObject = localer.a;
      k = m - k;
      i = j - i;
      if (k != 0)
        bl.o((View)localObject).b(0.0F);
      if (i != 0)
        bl.o((View)localObject).c(0.0F);
      localObject = bl.o((View)localObject);
      localbv.e.add(localer);
      ((dd)localObject).a(localbv.k).a(new cb(localbv, localer, k, i, (dd)localObject)).b();
    }
    this.a.clear();
    this.b.b.remove(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.bw
 * JD-Core Version:    0.6.2
 */