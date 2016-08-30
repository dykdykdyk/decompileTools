package android.support.v4.c.a;

import android.graphics.drawable.Drawable;

class e extends d
{
  public final void a(Drawable paramDrawable)
  {
    paramDrawable.jumpToCurrentState();
  }

  public Drawable c(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if (!(paramDrawable instanceof w))
      localObject = new q(paramDrawable);
    return localObject;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.c.a.e
 * JD-Core Version:    0.6.2
 */