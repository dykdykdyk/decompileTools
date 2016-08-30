package android.support.a.a;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;

final class c
  implements Drawable.Callback
{
  c(b paramb)
  {
  }

  public final void invalidateDrawable(Drawable paramDrawable)
  {
    this.a.invalidateSelf();
  }

  public final void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong)
  {
    this.a.scheduleSelf(paramRunnable, paramLong);
  }

  public final void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable)
  {
    this.a.unscheduleSelf(paramRunnable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.a.a.c
 * JD-Core Version:    0.6.2
 */