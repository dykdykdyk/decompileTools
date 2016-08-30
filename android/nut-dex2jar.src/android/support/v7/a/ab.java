package android.support.v7.a;

import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Window.Callback;

final class ab extends z
{
  ab(aa paramaa, Window.Callback paramCallback)
  {
    super(paramaa, paramCallback);
  }

  public final ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback)
  {
    return null;
  }

  public final ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback, int paramInt)
  {
    if (this.c.p);
    switch (paramInt)
    {
    default:
      return super.onWindowStartingActionMode(paramCallback, paramInt);
    case 0:
    }
    return a(paramCallback);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.ab
 * JD-Core Version:    0.6.2
 */