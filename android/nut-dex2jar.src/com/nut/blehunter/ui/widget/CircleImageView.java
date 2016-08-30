package com.nut.blehunter.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.nut.blehunter.t;

public class CircleImageView extends ImageView
{
  private static final ImageView.ScaleType a = ImageView.ScaleType.CENTER_CROP;
  private static final Bitmap.Config b = Bitmap.Config.ARGB_8888;
  private static final int c = Color.parseColor("#8000ffc6");
  private final RectF d = new RectF();
  private final RectF e = new RectF();
  private final Matrix f = new Matrix();
  private final Paint g = new Paint();
  private final Paint h = new Paint();
  private final Paint i = new Paint();
  private final Paint j = new Paint();
  private int k = -1;
  private int l = 0;
  private int m = 0;
  private int n = 0;
  private Bitmap o;
  private BitmapShader p;
  private int q;
  private int r;
  private float s;
  private float t;
  private float u = 0.0F;
  private ColorFilter v;
  private boolean w;
  private boolean x;
  private boolean y;
  private boolean z;

  public CircleImageView(Context paramContext)
  {
    super(paramContext);
    a();
  }

  public CircleImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public CircleImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, t.CircleImageView, paramInt, 0);
    this.l = paramContext.getDimensionPixelSize(0, 0);
    this.k = paramContext.getColor(1, -1);
    this.y = paramContext.getBoolean(2, false);
    this.n = paramContext.getColor(3, 0);
    this.m = paramContext.getDimensionPixelSize(4, 0);
    paramContext.recycle();
    a();
  }

  private static Bitmap a(Drawable paramDrawable)
  {
    if (paramDrawable == null)
      return null;
    if ((paramDrawable instanceof BitmapDrawable))
      return ((BitmapDrawable)paramDrawable).getBitmap();
    try
    {
      if ((paramDrawable instanceof ColorDrawable));
      for (Bitmap localBitmap = Bitmap.createBitmap(2, 2, b); ; localBitmap = Bitmap.createBitmap(paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight(), b))
      {
        Canvas localCanvas = new Canvas(localBitmap);
        paramDrawable.setBounds(0, 0, localCanvas.getWidth(), localCanvas.getHeight());
        paramDrawable.draw(localCanvas);
        return localBitmap;
      }
    }
    catch (Exception paramDrawable)
    {
      paramDrawable.printStackTrace();
    }
    return null;
  }

  private void a()
  {
    super.setScaleType(a);
    this.w = true;
    if (this.x)
    {
      d();
      this.x = false;
    }
  }

  private void b()
  {
    if (this.g != null)
      this.g.setColorFilter(this.v);
  }

  private void c()
  {
    if (this.z);
    for (this.o = null; ; this.o = a(getDrawable()))
    {
      d();
      return;
    }
  }

  private void d()
  {
    float f1 = 0.0F;
    if (!this.w)
      this.x = true;
    while ((getWidth() == 0) && (getHeight() == 0))
      return;
    if (this.o == null)
    {
      invalidate();
      return;
    }
    this.p = new BitmapShader(this.o, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    this.g.setAntiAlias(true);
    this.g.setShader(this.p);
    this.h.setStyle(Paint.Style.STROKE);
    this.h.setAntiAlias(true);
    this.h.setColor(this.k);
    this.h.setStrokeWidth(this.l);
    this.i.setStyle(Paint.Style.FILL);
    this.i.setAntiAlias(true);
    this.i.setColor(this.n);
    this.j.setColor(c);
    this.j.setStrokeWidth(this.l);
    this.j.setStyle(Paint.Style.STROKE);
    this.h.setAntiAlias(true);
    this.r = this.o.getHeight();
    this.q = this.o.getWidth();
    RectF localRectF = this.e;
    int i1 = getWidth() - getPaddingLeft() - getPaddingRight();
    int i2 = getHeight() - getPaddingTop() - getPaddingBottom();
    int i3 = Math.min(i1, i2);
    float f2 = getPaddingLeft();
    f2 = (i1 - i3) / 2.0F + f2;
    float f3 = getPaddingTop();
    f3 = (i2 - i3) / 2.0F + f3;
    localRectF.set(new RectF(f2, f3, i3 + f2, i3 + f3));
    this.t = (Math.min((this.e.height() - this.l) / 2.0F, (this.e.width() - this.l) / 2.0F) + this.m / 2);
    this.d.set(this.e);
    if (!this.y)
      this.d.inset(this.l, this.l);
    this.s = Math.min(this.d.height() / 2.0F, this.d.width() / 2.0F);
    b();
    this.f.set(null);
    if (this.q * this.d.height() > this.d.width() * this.r)
    {
      f3 = this.d.height() / this.r;
      f2 = (this.d.width() - this.q * f3) * 0.5F;
    }
    while (true)
    {
      this.f.setScale(f3, f3);
      this.f.postTranslate((int)(f2 + 0.5F) + this.d.left, (int)(f1 + 0.5F) + this.d.top);
      this.p.setLocalMatrix(this.f);
      invalidate();
      return;
      f3 = this.d.width() / this.q;
      f1 = this.d.height();
      float f4 = this.r;
      f2 = 0.0F;
      f1 = (f1 - f4 * f3) * 0.5F;
    }
  }

  public int getBorderColor()
  {
    return this.k;
  }

  public int getBorderWidth()
  {
    return this.l;
  }

  public ColorFilter getColorFilter()
  {
    return this.v;
  }

  protected float getDrawableRadius()
  {
    return this.s;
  }

  protected RectF getDrawableRect()
  {
    return this.d;
  }

  public int getFillColor()
  {
    return this.n;
  }

  public ImageView.ScaleType getScaleType()
  {
    return a;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    if (this.z)
      super.onDraw(paramCanvas);
    do
    {
      do
        return;
      while (this.o == null);
      if (this.n != 0)
        paramCanvas.drawCircle(this.d.centerX(), this.d.centerY(), this.s, this.i);
      paramCanvas.drawCircle(this.d.centerX(), this.d.centerY(), this.s, this.g);
      if (this.l != 0)
        paramCanvas.drawCircle(this.e.centerX(), this.e.centerY(), this.t, this.h);
    }
    while (this.u == 0.0F);
    paramCanvas.drawArc(this.e, 270.0F, -this.u, false, this.j);
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    d();
  }

  public void setAdjustViewBounds(boolean paramBoolean)
  {
    if (paramBoolean)
      throw new IllegalArgumentException("adjustViewBounds not supported.");
  }

  public void setBorderColor(int paramInt)
  {
    if (paramInt == this.k)
      return;
    this.k = paramInt;
    this.h.setColor(this.k);
    invalidate();
  }

  public void setBorderColorResource(int paramInt)
  {
    setBorderColor(getContext().getResources().getColor(paramInt));
  }

  public void setBorderOverlay(boolean paramBoolean)
  {
    if (paramBoolean == this.y)
      return;
    this.y = paramBoolean;
    d();
  }

  public void setBorderWidth(int paramInt)
  {
    if (paramInt == this.l)
      return;
    this.l = paramInt;
    d();
  }

  public void setColorFilter(ColorFilter paramColorFilter)
  {
    if (paramColorFilter == this.v)
      return;
    this.v = paramColorFilter;
    b();
    invalidate();
  }

  public void setDisableCircularTransformation(boolean paramBoolean)
  {
    if (this.z == paramBoolean)
      return;
    this.z = paramBoolean;
    c();
  }

  public void setFillColor(int paramInt)
  {
    if (paramInt == this.n)
      return;
    this.n = paramInt;
    this.i.setColor(paramInt);
    invalidate();
  }

  public void setFillColorResource(int paramInt)
  {
    setFillColor(getContext().getResources().getColor(paramInt));
  }

  public void setHighlightBorderSweepAngle(float paramFloat)
  {
    this.u = paramFloat;
    invalidate();
  }

  public void setImageBitmap(Bitmap paramBitmap)
  {
    super.setImageBitmap(paramBitmap);
    c();
  }

  public void setImageDrawable(Drawable paramDrawable)
  {
    super.setImageDrawable(paramDrawable);
    c();
  }

  public void setImageResource(int paramInt)
  {
    super.setImageResource(paramInt);
    c();
  }

  public void setImageURI(Uri paramUri)
  {
    super.setImageURI(paramUri);
    c();
  }

  public void setScaleType(ImageView.ScaleType paramScaleType)
  {
    if (paramScaleType != a)
      throw new IllegalArgumentException(String.format("ScaleType %s not supported.", new Object[] { paramScaleType }));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.widget.CircleImageView
 * JD-Core Version:    0.6.2
 */