package android.support.a.a;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Stack;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@TargetApi(21)
public final class k extends j
{
  static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;
  q c;
  boolean d = true;
  private PorterDuffColorFilter e;
  private ColorFilter f;
  private boolean g;
  private Drawable.ConstantState h;
  private final float[] i = new float[9];
  private final Matrix j = new Matrix();
  private final Rect k = new Rect();

  private k()
  {
    this.c = new q();
  }

  private k(q paramq)
  {
    this.c = paramq;
    this.e = a(paramq.c, paramq.d);
  }

  private PorterDuffColorFilter a(ColorStateList paramColorStateList, PorterDuff.Mode paramMode)
  {
    if ((paramColorStateList == null) || (paramMode == null))
      return null;
    return new PorterDuffColorFilter(paramColorStateList.getColorForState(getState(), 0), paramMode);
  }

  public static k a(Resources paramResources, int paramInt, Resources.Theme paramTheme)
  {
    Object localObject;
    if (Build.VERSION.SDK_INT >= 23)
    {
      localObject = new k();
      if (Build.VERSION.SDK_INT >= 21);
      for (paramResources = paramResources.getDrawable(paramInt, paramTheme); ; paramResources = paramResources.getDrawable(paramInt))
      {
        ((k)localObject).a = paramResources;
        ((k)localObject).h = new r(((k)localObject).a.getConstantState());
        return localObject;
      }
    }
    try
    {
      localObject = paramResources.getXml(paramInt);
      localAttributeSet = Xml.asAttributeSet((XmlPullParser)localObject);
      do
        paramInt = ((XmlPullParser)localObject).next();
      while ((paramInt != 2) && (paramInt != 1));
      if (paramInt != 2)
        throw new XmlPullParserException("No start tag found");
    }
    catch (XmlPullParserException paramResources)
    {
      AttributeSet localAttributeSet;
      Log.e("VectorDrawableCompat", "parser error", paramResources);
      return null;
      paramResources = a(paramResources, (XmlPullParser)localObject, localAttributeSet, paramTheme);
      return paramResources;
    }
    catch (IOException paramResources)
    {
      while (true)
        Log.e("VectorDrawableCompat", "parser error", paramResources);
    }
  }

  public static k a(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    k localk = new k();
    localk.inflate(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    return localk;
  }

  private void b(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    q localq = this.c;
    p localp = localq.b;
    int m = 1;
    Stack localStack = new Stack();
    localStack.push(p.a(localp));
    int n = paramXmlPullParser.getEventType();
    if (n != 1)
    {
      Object localObject;
      n localn;
      TypedArray localTypedArray;
      if (n == 2)
      {
        localObject = paramXmlPullParser.getName();
        localn = (n)localStack.peek();
        if ("path".equals(localObject))
        {
          localObject = new m();
          localTypedArray = j.a(paramResources, paramTheme, paramAttributeSet, a.c);
          ((m)localObject).a(localTypedArray, paramXmlPullParser);
          localTypedArray.recycle();
          localn.b.add(localObject);
          if (((o)localObject).n != null)
            localp.g.put(((o)localObject).n, localObject);
          m = 0;
          n = localq.a;
          localq.a = (((m)localObject).o | n);
        }
      }
      while (true)
      {
        n = paramXmlPullParser.next();
        break;
        if ("clip-path".equals(localObject))
        {
          localObject = new l();
          if (i.a(paramXmlPullParser, "pathData"))
          {
            localTypedArray = j.a(paramResources, paramTheme, paramAttributeSet, a.d);
            ((l)localObject).a(localTypedArray);
            localTypedArray.recycle();
          }
          localn.b.add(localObject);
          if (((o)localObject).n != null)
            localp.g.put(((o)localObject).n, localObject);
          localq.a |= ((l)localObject).o;
        }
        else
        {
          if ("group".equals(localObject))
          {
            localObject = new n();
            localTypedArray = j.a(paramResources, paramTheme, paramAttributeSet, a.b);
            ((n)localObject).l = null;
            ((n)localObject).c = i.a(localTypedArray, paramXmlPullParser, "rotation", 5, ((n)localObject).c);
            ((n)localObject).d = localTypedArray.getFloat(1, ((n)localObject).d);
            ((n)localObject).e = localTypedArray.getFloat(2, ((n)localObject).e);
            ((n)localObject).f = i.a(localTypedArray, paramXmlPullParser, "scaleX", 3, ((n)localObject).f);
            ((n)localObject).g = i.a(localTypedArray, paramXmlPullParser, "scaleY", 4, ((n)localObject).g);
            ((n)localObject).h = i.a(localTypedArray, paramXmlPullParser, "translateX", 6, ((n)localObject).h);
            ((n)localObject).i = i.a(localTypedArray, paramXmlPullParser, "translateY", 7, ((n)localObject).i);
            String str = localTypedArray.getString(0);
            if (str != null)
              ((n)localObject).m = str;
            ((n)localObject).j.reset();
            ((n)localObject).j.postTranslate(-((n)localObject).d, -((n)localObject).e);
            ((n)localObject).j.postScale(((n)localObject).f, ((n)localObject).g);
            ((n)localObject).j.postRotate(((n)localObject).c, 0.0F, 0.0F);
            ((n)localObject).j.postTranslate(((n)localObject).h + ((n)localObject).d, ((n)localObject).i + ((n)localObject).e);
            localTypedArray.recycle();
            localn.b.add(localObject);
            localStack.push(localObject);
            if (((n)localObject).m != null)
              localp.g.put(((n)localObject).m, localObject);
            localq.a |= ((n)localObject).k;
          }
          continue;
          if ((n == 3) && ("group".equals(paramXmlPullParser.getName())))
            localStack.pop();
        }
      }
    }
    if (m != 0)
    {
      paramResources = new StringBuffer();
      if (paramResources.length() > 0)
        paramResources.append(" or ");
      paramResources.append("path");
      throw new XmlPullParserException("no " + paramResources + " defined");
    }
  }

  public final boolean canApplyTheme()
  {
    if (this.a != null)
      android.support.v4.c.a.a.d(this.a);
    return false;
  }

  public final void draw(Canvas paramCanvas)
  {
    float f2 = 1.0F;
    if (this.a != null)
      this.a.draw(paramCanvas);
    do
    {
      return;
      copyBounds(this.k);
    }
    while ((this.k.width() <= 0) || (this.k.height() <= 0));
    Object localObject;
    float f3;
    float f1;
    if (this.f == null)
    {
      localObject = this.e;
      paramCanvas.getMatrix(this.j);
      this.j.getValues(this.i);
      f3 = Math.abs(this.i[0]);
      f1 = Math.abs(this.i[4]);
      float f4 = Math.abs(this.i[1]);
      float f5 = Math.abs(this.i[3]);
      if ((f4 == 0.0F) && (f5 == 0.0F))
        break label617;
      f1 = 1.0F;
    }
    while (true)
    {
      int n = (int)(f2 * this.k.width());
      int m = (int)(f1 * this.k.height());
      int i1 = Math.min(2048, n);
      int i2 = Math.min(2048, m);
      if ((i1 <= 0) || (i2 <= 0))
        break;
      n = paramCanvas.save();
      paramCanvas.translate(this.k.left, this.k.top);
      this.k.offsetTo(0, 0);
      q localq = this.c;
      if (localq.f != null)
      {
        if ((i1 != localq.f.getWidth()) || (i2 != localq.f.getHeight()))
          break label387;
        m = 1;
        label271: if (m != 0);
      }
      else
      {
        localq.f = Bitmap.createBitmap(i1, i2, Bitmap.Config.ARGB_8888);
        localq.k = true;
      }
      label315: Rect localRect;
      if (!this.d)
      {
        this.c.a(i1, i2);
        localq = this.c;
        localRect = this.k;
        if (localq.b.e >= 255)
          break label545;
        m = 1;
        label344: if ((m != 0) || (localObject != null))
          break label551;
      }
      for (localObject = null; ; localObject = localq.l)
      {
        paramCanvas.drawBitmap(localq.f, null, localRect, (Paint)localObject);
        paramCanvas.restoreToCount(n);
        return;
        localObject = this.f;
        break;
        label387: m = 0;
        break label271;
        localq = this.c;
        if ((!localq.k) && (localq.g == localq.c) && (localq.h == localq.d) && (localq.j == localq.e) && (localq.i == localq.b.e));
        for (m = 1; ; m = 0)
        {
          if (m != 0)
            break label543;
          this.c.a(i1, i2);
          localq = this.c;
          localq.g = localq.c;
          localq.h = localq.d;
          localq.i = localq.b.e;
          localq.j = localq.e;
          localq.k = false;
          break;
        }
        label543: break label315;
        label545: m = 0;
        break label344;
        label551: if (localq.l == null)
        {
          localq.l = new Paint();
          localq.l.setFilterBitmap(true);
        }
        localq.l.setAlpha(localq.b.e);
        localq.l.setColorFilter((ColorFilter)localObject);
      }
      label617: f2 = f3;
    }
  }

  public final int getAlpha()
  {
    if (this.a != null)
      return android.support.v4.c.a.a.c(this.a);
    return this.c.b.e;
  }

  public final int getChangingConfigurations()
  {
    if (this.a != null)
      return this.a.getChangingConfigurations();
    return super.getChangingConfigurations() | this.c.getChangingConfigurations();
  }

  public final Drawable.ConstantState getConstantState()
  {
    if (this.a != null)
      return new r(this.a.getConstantState());
    this.c.a = getChangingConfigurations();
    return this.c;
  }

  public final int getIntrinsicHeight()
  {
    if (this.a != null)
      return this.a.getIntrinsicHeight();
    return (int)this.c.b.b;
  }

  public final int getIntrinsicWidth()
  {
    if (this.a != null)
      return this.a.getIntrinsicWidth();
    return (int)this.c.b.a;
  }

  public final int getOpacity()
  {
    if (this.a != null)
      return this.a.getOpacity();
    return -3;
  }

  public final void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet)
    throws XmlPullParserException, IOException
  {
    if (this.a != null)
    {
      this.a.inflate(paramResources, paramXmlPullParser, paramAttributeSet);
      return;
    }
    inflate(paramResources, paramXmlPullParser, paramAttributeSet, null);
  }

  public final void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    if (this.a != null)
    {
      android.support.v4.c.a.a.a(this.a, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
      return;
    }
    q localq1 = this.c;
    localq1.b = new p();
    TypedArray localTypedArray = a(paramResources, paramTheme, paramAttributeSet, a.a);
    q localq2 = this.c;
    p localp = localq2.b;
    int m = i.a(localTypedArray, paramXmlPullParser, "tintMode", 6);
    PorterDuff.Mode localMode = PorterDuff.Mode.SRC_IN;
    Object localObject = localMode;
    boolean bool;
    switch (m)
    {
    default:
      localObject = localMode;
    case 4:
    case 6:
    case 7:
    case 8:
    case 10:
    case 11:
    case 12:
    case 13:
      localq2.d = ((PorterDuff.Mode)localObject);
      localObject = localTypedArray.getColorStateList(1);
      if (localObject != null)
        localq2.c = ((ColorStateList)localObject);
      bool = localq2.e;
      if (i.a(paramXmlPullParser, "autoMirrored"))
        break;
    case 3:
    case 5:
    case 9:
    case 14:
    case 15:
    case 16:
    }
    while (true)
    {
      localq2.e = bool;
      localp.c = i.a(localTypedArray, paramXmlPullParser, "viewportWidth", 7, localp.c);
      localp.d = i.a(localTypedArray, paramXmlPullParser, "viewportHeight", 8, localp.d);
      if (localp.c > 0.0F)
        break label356;
      throw new XmlPullParserException(localTypedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
      localObject = PorterDuff.Mode.SRC_OVER;
      break;
      localObject = PorterDuff.Mode.SRC_IN;
      break;
      localObject = PorterDuff.Mode.SRC_ATOP;
      break;
      localObject = PorterDuff.Mode.MULTIPLY;
      break;
      localObject = PorterDuff.Mode.SCREEN;
      break;
      localObject = PorterDuff.Mode.ADD;
      break;
      bool = localTypedArray.getBoolean(5, bool);
    }
    label356: if (localp.d <= 0.0F)
      throw new XmlPullParserException(localTypedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
    localp.a = localTypedArray.getDimension(3, localp.a);
    localp.b = localTypedArray.getDimension(2, localp.b);
    if (localp.a <= 0.0F)
      throw new XmlPullParserException(localTypedArray.getPositionDescription() + "<vector> tag requires width > 0");
    if (localp.b <= 0.0F)
      throw new XmlPullParserException(localTypedArray.getPositionDescription() + "<vector> tag requires height > 0");
    localp.e = ((int)(i.a(localTypedArray, paramXmlPullParser, "alpha", 4, localp.e / 255.0F) * 255.0F));
    localObject = localTypedArray.getString(0);
    if (localObject != null)
    {
      localp.f = ((String)localObject);
      localp.g.put(localObject, localp);
    }
    localTypedArray.recycle();
    localq1.a = getChangingConfigurations();
    localq1.k = true;
    b(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    this.e = a(localq1.c, localq1.d);
  }

  public final void invalidateSelf()
  {
    if (this.a != null)
    {
      this.a.invalidateSelf();
      return;
    }
    super.invalidateSelf();
  }

  public final boolean isStateful()
  {
    if (this.a != null)
      return this.a.isStateful();
    return (super.isStateful()) || ((this.c != null) && (this.c.c != null) && (this.c.c.isStateful()));
  }

  public final Drawable mutate()
  {
    if (this.a != null)
      this.a.mutate();
    while ((this.g) || (super.mutate() != this))
      return this;
    this.c = new q(this.c);
    this.g = true;
    return this;
  }

  protected final void onBoundsChange(Rect paramRect)
  {
    if (this.a != null)
      this.a.setBounds(paramRect);
  }

  protected final boolean onStateChange(int[] paramArrayOfInt)
  {
    if (this.a != null)
      return this.a.setState(paramArrayOfInt);
    paramArrayOfInt = this.c;
    if ((paramArrayOfInt.c != null) && (paramArrayOfInt.d != null))
    {
      this.e = a(paramArrayOfInt.c, paramArrayOfInt.d);
      invalidateSelf();
      return true;
    }
    return false;
  }

  public final void scheduleSelf(Runnable paramRunnable, long paramLong)
  {
    if (this.a != null)
    {
      this.a.scheduleSelf(paramRunnable, paramLong);
      return;
    }
    super.scheduleSelf(paramRunnable, paramLong);
  }

  public final void setAlpha(int paramInt)
  {
    if (this.a != null)
      this.a.setAlpha(paramInt);
    while (this.c.b.e == paramInt)
      return;
    this.c.b.e = paramInt;
    invalidateSelf();
  }

  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    if (this.a != null)
    {
      this.a.setColorFilter(paramColorFilter);
      return;
    }
    this.f = paramColorFilter;
    invalidateSelf();
  }

  public final void setTint(int paramInt)
  {
    if (this.a != null)
    {
      android.support.v4.c.a.a.a(this.a, paramInt);
      return;
    }
    setTintList(ColorStateList.valueOf(paramInt));
  }

  public final void setTintList(ColorStateList paramColorStateList)
  {
    if (this.a != null)
      android.support.v4.c.a.a.a(this.a, paramColorStateList);
    q localq;
    do
    {
      return;
      localq = this.c;
    }
    while (localq.c == paramColorStateList);
    localq.c = paramColorStateList;
    this.e = a(paramColorStateList, localq.d);
    invalidateSelf();
  }

  public final void setTintMode(PorterDuff.Mode paramMode)
  {
    if (this.a != null)
      android.support.v4.c.a.a.a(this.a, paramMode);
    q localq;
    do
    {
      return;
      localq = this.c;
    }
    while (localq.d == paramMode);
    localq.d = paramMode;
    this.e = a(localq.c, paramMode);
    invalidateSelf();
  }

  public final boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.a != null)
      return this.a.setVisible(paramBoolean1, paramBoolean2);
    return super.setVisible(paramBoolean1, paramBoolean2);
  }

  public final void unscheduleSelf(Runnable paramRunnable)
  {
    if (this.a != null)
    {
      this.a.unscheduleSelf(paramRunnable);
      return;
    }
    super.unscheduleSelf(paramRunnable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.a.a.k
 * JD-Core Version:    0.6.2
 */