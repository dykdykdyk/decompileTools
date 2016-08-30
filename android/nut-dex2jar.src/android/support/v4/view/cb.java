package android.support.v4.view;

import android.view.View;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.WindowInsets;

final class cb
  implements View.OnApplyWindowInsetsListener
{
  cb(bd parambd)
  {
  }

  public final WindowInsets onApplyWindowInsets(View paramView, WindowInsets paramWindowInsets)
  {
    paramWindowInsets = new dx(paramWindowInsets);
    return ((dx)this.a.a(paramView, paramWindowInsets)).a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.cb
 * JD-Core Version:    0.6.2
 */