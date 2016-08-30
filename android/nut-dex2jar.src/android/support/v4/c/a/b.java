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

class b
  implements c
{
  public void a(Drawable paramDrawable)
  {
  }

  public void a(Drawable paramDrawable, float paramFloat1, float paramFloat2)
  {
  }

  public void a(Drawable paramDrawable, int paramInt)
  {
    if ((paramDrawable instanceof w))
      ((w)paramDrawable).setTint(paramInt);
  }

  public void a(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
  }

  public void a(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    if ((paramDrawable instanceof w))
      ((w)paramDrawable).setTintList(paramColorStateList);
  }

  public void a(Drawable paramDrawable, Resources.Theme paramTheme)
  {
  }

  public void a(Drawable paramDrawable, Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws IOException, XmlPullParserException
  {
    paramDrawable.inflate(paramResources, paramXmlPullParser, paramAttributeSet);
  }

  public void a(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    if ((paramDrawable instanceof w))
      ((w)paramDrawable).setTintMode(paramMode);
  }

  public void a(Drawable paramDrawable, boolean paramBoolean)
  {
  }

  public boolean b(Drawable paramDrawable)
  {
    return false;
  }

  public Drawable c(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if (!(paramDrawable instanceof w))
      localObject = new l(paramDrawable);
    return localObject;
  }

  public int d(Drawable paramDrawable)
  {
    return 0;
  }

  public int e(Drawable paramDrawable)
  {
    return 0;
  }

  public boolean f(Drawable paramDrawable)
  {
    return false;
  }

  public ColorFilter g(Drawable paramDrawable)
  {
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.c.a.b
 * JD-Core Version:    0.6.2
 */