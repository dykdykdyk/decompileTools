package android.support.v4.app;

import android.view.View;

final class t extends z
{
  t(Fragment paramFragment)
  {
  }

  public final View a(int paramInt)
  {
    if (this.a.mView == null)
      throw new IllegalStateException("Fragment does not have a view");
    return this.a.mView.findViewById(paramInt);
  }

  public final boolean a()
  {
    return this.a.mView != null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.t
 * JD-Core Version:    0.6.2
 */