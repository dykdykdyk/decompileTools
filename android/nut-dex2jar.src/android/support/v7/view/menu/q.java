package android.support.v7.view.menu;

import android.support.v7.view.d;
import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;

final class q extends FrameLayout
  implements d
{
  final CollapsibleActionView a;

  q(View paramView)
  {
    super(paramView.getContext());
    this.a = ((CollapsibleActionView)paramView);
    addView(paramView);
  }

  public final void a()
  {
    this.a.onActionViewExpanded();
  }

  public final void b()
  {
    this.a.onActionViewCollapsed();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.q
 * JD-Core Version:    0.6.2
 */