package com.soundcloud.android.crop;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;

final class n
{
  RectF a;
  Rect b;
  Matrix c;
  RectF d;
  final Paint e = new Paint();
  final Paint f = new Paint();
  final Paint g = new Paint();
  View h;
  boolean i;
  boolean j;
  int k;
  int l = p.a;
  int m = o.a;
  boolean n;
  float o;
  float p;
  float q;
  boolean r;

  public n(View paramView)
  {
    this.h = paramView;
    paramView = paramView.getContext();
    TypedValue localTypedValue = new TypedValue();
    paramView.getTheme().resolveAttribute(z.cropImageStyle, localTypedValue, true);
    paramView = paramView.obtainStyledAttributes(localTypedValue.resourceId, ad.CropImageView);
    try
    {
      this.i = paramView.getBoolean(ad.CropImageView_showThirds, false);
      this.j = paramView.getBoolean(ad.CropImageView_showCircle, false);
      this.k = paramView.getColor(ad.CropImageView_highlightColor, -13388315);
      this.m = o.a()[paramView.getInt(ad.CropImageView_showHandles, 0)];
      return;
    }
    finally
    {
      paramView.recycle();
    }
  }

  final float a(float paramFloat)
  {
    return this.h.getResources().getDisplayMetrics().density * paramFloat;
  }

  final Rect a()
  {
    RectF localRectF = new RectF(this.a.left, this.a.top, this.a.right, this.a.bottom);
    this.c.mapRect(localRectF);
    return new Rect(Math.round(localRectF.left), Math.round(localRectF.top), Math.round(localRectF.right), Math.round(localRectF.bottom));
  }

  public final void a(int paramInt)
  {
    if (paramInt != this.l)
    {
      this.l = paramInt;
      this.h.invalidate();
    }
  }

  public final void b()
  {
    this.b = a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.soundcloud.android.crop.n
 * JD-Core Version:    0.6.2
 */