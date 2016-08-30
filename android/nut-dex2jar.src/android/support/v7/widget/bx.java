package android.support.v7.widget;

import android.support.v4.view.bl;
import android.support.v4.view.dd;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;

final class bx
  implements Runnable
{
  bx(bv parambv, ArrayList paramArrayList)
  {
  }

  public final void run()
  {
    Iterator localIterator = this.a.iterator();
    if (localIterator.hasNext())
    {
      ce localce = (ce)localIterator.next();
      bv localbv = this.b;
      Object localObject1 = localce.a;
      if (localObject1 == null)
      {
        localObject1 = null;
        label46: localObject2 = localce.b;
        if (localObject2 == null)
          break label223;
      }
      label223: for (Object localObject2 = ((er)localObject2).a; ; localObject2 = null)
      {
        if (localObject1 != null)
        {
          localObject1 = bl.o((View)localObject1).a(localbv.l);
          localbv.g.add(localce.a);
          ((dd)localObject1).b(localce.e - localce.c);
          ((dd)localObject1).c(localce.f - localce.d);
          ((dd)localObject1).a(0.0F).a(new cc(localbv, localce, (dd)localObject1)).b();
        }
        if (localObject2 == null)
          break;
        localObject1 = bl.o((View)localObject2);
        localbv.g.add(localce.b);
        ((dd)localObject1).b(0.0F).c(0.0F).a(localbv.l).a(1.0F).a(new cd(localbv, localce, (dd)localObject1, (View)localObject2)).b();
        break;
        localObject1 = ((er)localObject1).a;
        break label46;
      }
    }
    this.a.clear();
    this.b.c.remove(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.bx
 * JD-Core Version:    0.6.2
 */