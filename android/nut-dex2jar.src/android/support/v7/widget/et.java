package android.support.v7.widget;

import android.os.Bundle;
import android.support.v4.view.a;
import android.support.v4.view.a.f;
import android.view.View;

final class et extends a
{
  et(es parames)
  {
  }

  public final void a(View paramView, f paramf)
  {
    super.a(paramView, paramf);
    if ((!this.b.a()) && (this.b.b.getLayoutManager() != null))
      this.b.b.getLayoutManager().a(paramView, paramf);
  }

  public final boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    boolean bool2 = false;
    boolean bool1;
    if (super.a(paramView, paramInt, paramBundle))
      bool1 = true;
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      }
      while (this.b.a());
      bool1 = bool2;
    }
    while (this.b.b.getLayoutManager() == null);
    paramView = this.b.b.getLayoutManager();
    paramBundle = paramView.r.b;
    paramView = paramView.r.p;
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.et
 * JD-Core Version:    0.6.2
 */