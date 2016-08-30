package android.support.v4.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;

public class a
{
  public static final Drawable a(Context paramContext, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 21)
      return paramContext.getDrawable(paramInt);
    return paramContext.getResources().getDrawable(paramInt);
  }

  public static final int b(Context paramContext, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 23)
      return paramContext.getColor(paramInt);
    return paramContext.getResources().getColor(paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.b.a
 * JD-Core Version:    0.6.2
 */