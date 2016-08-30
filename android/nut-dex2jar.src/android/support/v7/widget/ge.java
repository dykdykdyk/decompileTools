package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.a.u;
import java.lang.ref.WeakReference;

public final class ge extends Resources
{
  private final WeakReference<Context> a;

  public ge(Context paramContext, Resources paramResources)
  {
    super(paramResources.getAssets(), paramResources.getDisplayMetrics(), paramResources.getConfiguration());
    this.a = new WeakReference(paramContext);
  }

  public static boolean a()
  {
    return (u.j()) && (Build.VERSION.SDK_INT <= 20);
  }

  public final Drawable getDrawable(int paramInt)
    throws Resources.NotFoundException
  {
    Context localContext = (Context)this.a.get();
    if (localContext != null)
    {
      ao localao = ao.a();
      Drawable localDrawable2 = localao.a(localContext, paramInt);
      Drawable localDrawable1 = localDrawable2;
      if (localDrawable2 == null)
        localDrawable1 = super.getDrawable(paramInt);
      if (localDrawable1 != null)
        return localao.a(localContext, paramInt, false, localDrawable1);
      return null;
    }
    return super.getDrawable(paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ge
 * JD-Core Version:    0.6.2
 */