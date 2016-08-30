package android.support.v7.a;

import android.app.UiModeManager;
import android.content.Context;
import android.view.Window;
import android.view.Window.Callback;

final class aa extends y
{
  private final UiModeManager w;

  aa(Context paramContext, Window paramWindow, t paramt)
  {
    super(paramContext, paramWindow, paramt);
    this.w = ((UiModeManager)paramContext.getSystemService("uimode"));
  }

  final Window.Callback a(Window.Callback paramCallback)
  {
    return new ab(this, paramCallback);
  }

  final int f(int paramInt)
  {
    if ((paramInt == 0) && (this.w.getNightMode() == 0))
      return -1;
    return super.f(paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.aa
 * JD-Core Version:    0.6.2
 */