package com.soundcloud.android.crop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

abstract class q extends ImageView
{
  private final Matrix a = new Matrix();
  private final float[] b = new float[9];
  private Runnable c;
  protected Matrix d = new Matrix();
  protected Matrix e = new Matrix();
  protected final ae f = new ae(null, 0);
  int g = -1;
  int h = -1;
  float i;
  protected Handler j = new Handler();
  private t k;

  public q(Context paramContext)
  {
    super(paramContext);
    setScaleType(ImageView.ScaleType.MATRIX);
  }

  public q(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setScaleType(ImageView.ScaleType.MATRIX);
  }

  public q(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setScaleType(ImageView.ScaleType.MATRIX);
  }

  private void a(Bitmap paramBitmap, int paramInt)
  {
    super.setImageBitmap(paramBitmap);
    Object localObject = getDrawable();
    if (localObject != null)
      ((Drawable)localObject).setDither(true);
    localObject = this.f.a;
    this.f.a = paramBitmap;
    this.f.b = paramInt;
    if ((localObject != null) && (localObject != paramBitmap) && (this.k != null))
      this.k.a((Bitmap)localObject);
  }

  private void a(ae paramae, Matrix paramMatrix, boolean paramBoolean)
  {
    float f1 = getWidth();
    float f2 = getHeight();
    float f3 = paramae.b();
    float f4 = paramae.a();
    paramMatrix.reset();
    float f5 = Math.min(Math.min(f1 / f3, 3.0F), Math.min(f2 / f4, 3.0F));
    if (paramBoolean)
    {
      Matrix localMatrix = new Matrix();
      if ((paramae.a != null) && (paramae.b != 0))
      {
        int m = paramae.a.getWidth() / 2;
        int n = paramae.a.getHeight() / 2;
        localMatrix.preTranslate(-m, -n);
        localMatrix.postRotate(paramae.b);
        localMatrix.postTranslate(paramae.b() / 2, paramae.a() / 2);
      }
      paramMatrix.postConcat(localMatrix);
    }
    paramMatrix.postScale(f5, f5);
    paramMatrix.postTranslate((f1 - f3 * f5) / 2.0F, (f2 - f4 * f5) / 2.0F);
  }

  public void a()
  {
    a(null, true);
  }

  protected void a(float paramFloat1, float paramFloat2)
  {
    this.e.postTranslate(paramFloat1, paramFloat2);
  }

  protected void a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = paramFloat1;
    if (paramFloat1 > this.i)
      f1 = this.i;
    paramFloat1 = f1 / getScale();
    this.e.postScale(paramFloat1, paramFloat1, paramFloat2, paramFloat3);
    setImageMatrix(getImageViewMatrix());
    b();
  }

  public void a(Bitmap paramBitmap, boolean paramBoolean)
  {
    a(new ae(paramBitmap, 0), paramBoolean);
  }

  public void a(ae paramae, boolean paramBoolean)
  {
    if (getWidth() <= 0)
    {
      this.c = new r(this, paramae, paramBoolean);
      return;
    }
    if (paramae.a != null)
    {
      a(paramae, this.d, true);
      a(paramae.a, paramae.b);
      if (paramBoolean)
        this.e.reset();
      setImageMatrix(getImageViewMatrix());
      if (this.f.a != null)
        break label103;
    }
    label103: for (float f1 = 1.0F; ; f1 = Math.max(this.f.b() / this.g, this.f.a() / this.h) * 4.0F)
    {
      this.i = f1;
      return;
      this.d.reset();
      setImageBitmap(null);
      break;
    }
  }

  protected final void b()
  {
    float f2 = 0.0F;
    Object localObject = this.f.a;
    if (localObject == null)
      return;
    Matrix localMatrix = getImageViewMatrix();
    localObject = new RectF(0.0F, 0.0F, ((Bitmap)localObject).getWidth(), ((Bitmap)localObject).getHeight());
    localMatrix.mapRect((RectF)localObject);
    float f1 = ((RectF)localObject).height();
    float f3 = ((RectF)localObject).width();
    int m = getHeight();
    if (f1 < m)
      f1 = (m - f1) / 2.0F - ((RectF)localObject).top;
    while (true)
    {
      m = getWidth();
      if (f3 < m)
        f2 = (m - f3) / 2.0F - ((RectF)localObject).left;
      while (true)
      {
        a(f2, f1);
        setImageMatrix(getImageViewMatrix());
        return;
        if (((RectF)localObject).top > 0.0F)
        {
          f1 = -((RectF)localObject).top;
          break;
        }
        if (((RectF)localObject).bottom >= m)
          break label229;
        f1 = getHeight() - ((RectF)localObject).bottom;
        break;
        if (((RectF)localObject).left > 0.0F)
          f2 = -((RectF)localObject).left;
        else if (((RectF)localObject).right < m)
          f2 = m - ((RectF)localObject).right;
      }
      label229: f1 = 0.0F;
    }
  }

  protected final void b(float paramFloat1, float paramFloat2)
  {
    a(paramFloat1, paramFloat2);
    setImageMatrix(getImageViewMatrix());
  }

  protected final void b(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramFloat1 = (paramFloat1 - getScale()) / 300.0F;
    float f1 = getScale();
    long l = System.currentTimeMillis();
    this.j.post(new s(this, l, f1, paramFloat1, paramFloat2, paramFloat3));
  }

  protected Matrix getImageViewMatrix()
  {
    this.a.set(this.d);
    this.a.postConcat(this.e);
    return this.a;
  }

  protected float getScale()
  {
    this.e.getValues(this.b);
    return this.b[0];
  }

  public Matrix getUnrotatedMatrix()
  {
    Matrix localMatrix = new Matrix();
    a(this.f, localMatrix, false);
    localMatrix.postConcat(this.e);
    return localMatrix;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      paramKeyEvent.startTracking();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.isTracking()) && (!paramKeyEvent.isCanceled()) && (getScale() > 1.0F))
    {
      a(1.0F, getWidth() / 2.0F, getHeight() / 2.0F);
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    this.g = (paramInt3 - paramInt1);
    this.h = (paramInt4 - paramInt2);
    Runnable localRunnable = this.c;
    if (localRunnable != null)
    {
      this.c = null;
      localRunnable.run();
    }
    if (this.f.a != null)
    {
      a(this.f, this.d, true);
      setImageMatrix(getImageViewMatrix());
    }
  }

  public void setImageBitmap(Bitmap paramBitmap)
  {
    a(paramBitmap, 0);
  }

  public void setRecycler(t paramt)
  {
    this.k = paramt;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.soundcloud.android.crop.q
 * JD-Core Version:    0.6.2
 */