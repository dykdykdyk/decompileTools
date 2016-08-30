package android.support.v7.widget;

import android.os.Handler;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.PopupWindow;

final class dd
  implements AbsListView.OnScrollListener
{
  private dd(cu paramcu)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((paramInt == 1) && (!this.a.g()) && (cu.b(this.a).getContentView() != null))
    {
      cu.d(this.a).removeCallbacks(cu.c(this.a));
      cu.c(this.a).run();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.dd
 * JD-Core Version:    0.6.2
 */