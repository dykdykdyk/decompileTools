package android.support.v4.c.a;

import android.graphics.drawable.Drawable;

class g extends f
{
  public final void a(Drawable paramDrawable, boolean paramBoolean)
  {
    paramDrawable.setAutoMirrored(paramBoolean);
  }

  public final boolean b(Drawable paramDrawable)
  {
    return paramDrawable.isAutoMirrored();
  }

  public Drawable c(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if (!(paramDrawable instanceof w))
      localObject = new s(paramDrawable);
    return localObject;
  }

  public final int e(Drawable paramDrawable)
  {
    return paramDrawable.getAlpha();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.c.a.g
 * JD-Core Version:    0.6.2
 */