package android.support.v4.c.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

abstract interface c
{
  public abstract void a(Drawable paramDrawable);

  public abstract void a(Drawable paramDrawable, float paramFloat1, float paramFloat2);

  public abstract void a(Drawable paramDrawable, int paramInt);

  public abstract void a(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public abstract void a(Drawable paramDrawable, ColorStateList paramColorStateList);

  public abstract void a(Drawable paramDrawable, Resources.Theme paramTheme);

  public abstract void a(Drawable paramDrawable, Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws IOException, XmlPullParserException;

  public abstract void a(Drawable paramDrawable, PorterDuff.Mode paramMode);

  public abstract void a(Drawable paramDrawable, boolean paramBoolean);

  public abstract boolean b(Drawable paramDrawable);

  public abstract Drawable c(Drawable paramDrawable);

  public abstract int d(Drawable paramDrawable);

  public abstract int e(Drawable paramDrawable);

  public abstract boolean f(Drawable paramDrawable);

  public abstract ColorFilter g(Drawable paramDrawable);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.c.a.c
 * JD-Core Version:    0.6.2
 */