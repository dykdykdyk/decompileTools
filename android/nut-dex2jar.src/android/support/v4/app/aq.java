package android.support.v4.app;

import android.transition.Transition;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class aq
  implements ViewTreeObserver.OnPreDrawListener
{
  aq(View paramView1, Transition paramTransition, View paramView2, au paramau, Map paramMap1, Map paramMap2, ArrayList paramArrayList)
  {
  }

  public final boolean onPreDraw()
  {
    this.a.getViewTreeObserver().removeOnPreDrawListener(this);
    if (this.b != null)
      this.b.removeTarget(this.c);
    View localView = this.d.a();
    if (localView != null)
    {
      if (!this.e.isEmpty())
      {
        ao.a(this.f, localView);
        this.f.keySet().retainAll(this.e.values());
        Iterator localIterator = this.e.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          Object localObject = (String)localEntry.getValue();
          localObject = (View)this.f.get(localObject);
          if (localObject != null)
            ((View)localObject).setTransitionName((String)localEntry.getKey());
        }
      }
      if (this.b != null)
      {
        ao.a(this.g, localView);
        this.g.removeAll(this.f.values());
        this.g.add(this.c);
        ao.b(this.b, this.g);
      }
    }
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.aq
 * JD-Core Version:    0.6.2
 */