package android.support.v7.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.support.v4.view.n;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.PopupWindow.OnDismissListener;
import java.util.List;

final class ae
  implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
{
  public final void onClick(View paramView)
  {
    if (paramView == ActivityChooserView.c(this.a))
    {
      this.a.a();
      paramView = ActivityChooserView.a(this.a).a.b();
      int i = ActivityChooserView.a(this.a).a.a(paramView);
      paramView = ActivityChooserView.a(this.a).a.b(i);
      if (paramView != null)
      {
        paramView.addFlags(524288);
        this.a.getContext().startActivity(paramView);
      }
      return;
    }
    if (paramView == ActivityChooserView.d(this.a))
    {
      ActivityChooserView.a(this.a, false);
      ActivityChooserView.a(this.a, ActivityChooserView.e(this.a));
      return;
    }
    throw new IllegalArgumentException();
  }

  public final void onDismiss()
  {
    if (ActivityChooserView.f(this.a) != null)
      ActivityChooserView.f(this.a).onDismiss();
    if (this.a.a != null)
      this.a.a.a(false);
  }

  public final void onItemClick(AdapterView<?> arg1, View paramView, int paramInt, long paramLong)
  {
    switch (((ad)???.getAdapter()).getItemViewType(paramInt))
    {
    default:
      throw new IllegalArgumentException();
    case 1:
      ActivityChooserView.a(this.a, 2147483647);
    case 0:
    }
    do
    {
      return;
      this.a.a();
      if (!ActivityChooserView.b(this.a))
        break;
    }
    while (paramInt <= 0);
    paramView = ActivityChooserView.a(this.a).a;
    while (true)
    {
      synchronized (paramView.a)
      {
        paramView.c();
        y localy1 = (y)paramView.b.get(paramInt);
        y localy2 = (y)paramView.b.get(0);
        if (localy2 != null)
        {
          f = localy2.b - localy1.b + 5.0F;
          paramView.a(new aa(new ComponentName(localy1.a.activityInfo.packageName, localy1.a.activityInfo.name), System.currentTimeMillis(), f));
          return;
        }
      }
      float f = 1.0F;
    }
    if (ActivityChooserView.a(this.a).b);
    while (true)
    {
      ??? = ActivityChooserView.a(this.a).a.b(paramInt);
      if (??? == null)
        break;
      ???.addFlags(524288);
      this.a.getContext().startActivity(???);
      return;
      paramInt += 1;
    }
  }

  public final boolean onLongClick(View paramView)
  {
    if (paramView == ActivityChooserView.c(this.a))
    {
      if (ActivityChooserView.a(this.a).getCount() > 0)
      {
        ActivityChooserView.a(this.a, true);
        ActivityChooserView.a(this.a, ActivityChooserView.e(this.a));
      }
      return true;
    }
    throw new IllegalArgumentException();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ae
 * JD-Core Version:    0.6.2
 */