package android.support.v4.c.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class a
{
  static final c a = new b();

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
    {
      a = new i();
      return;
    }
    if (i >= 21)
    {
      a = new h();
      return;
    }
    if (i >= 19)
    {
      a = new g();
      return;
    }
    if (i >= 17)
    {
      a = new f();
      return;
    }
    if (i >= 11)
    {
      a = new e();
      return;
    }
    if (i >= 5)
    {
      a = new d();
      return;
    }
  }

  public static void a(Drawable paramDrawable)
  {
    a.a(paramDrawable);
  }

  public static void a(Drawable paramDrawable, float paramFloat1, float paramFloat2)
  {
    a.a(paramDrawable, paramFloat1, paramFloat2);
  }

  public static void a(Drawable paramDrawable, int paramInt)
  {
    a.a(paramDrawable, paramInt);
  }

  public static void a(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a.a(paramDrawable, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public static void a(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    a.a(paramDrawable, paramColorStateList);
  }

  public static void a(Drawable paramDrawable, Resources.Theme paramTheme)
  {
    a.a(paramDrawable, paramTheme);
  }

  public static void a(Drawable paramDrawable, Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    a.a(paramDrawable, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
  }

  public static void a(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    a.a(paramDrawable, paramMode);
  }

  public static void a(Drawable paramDrawable, boolean paramBoolean)
  {
    a.a(paramDrawable, paramBoolean);
  }

  public static boolean b(Drawable paramDrawable)
  {
    return a.b(paramDrawable);
  }

  public static int c(Drawable paramDrawable)
  {
    return a.e(paramDrawable);
  }

  public static boolean d(Drawable paramDrawable)
  {
    return a.f(paramDrawable);
  }

  public static ColorFilter e(Drawable paramDrawable)
  {
    return a.g(paramDrawable);
  }

  public static Drawable f(Drawable paramDrawable)
  {
    return a.c(paramDrawable);
  }

  public static int g(Drawable paramDrawable)
  {
    return a.d(paramDrawable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.c.a.a
 * JD-Core Version:    0.6.2
 */