package com.soundcloud.android.crop;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region.Op;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;

public class CropImageView extends q
{
  ArrayList<n> a = new ArrayList();
  n b;
  Context c;
  private float k;
  private float l;
  private int m;
  private int n;

  public CropImageView(Context paramContext)
  {
    super(paramContext);
  }

  public CropImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public CropImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void a(n paramn)
  {
    Object localObject = paramn.b;
    float f1 = ((Rect)localObject).width();
    float f2 = ((Rect)localObject).height();
    float f3 = getWidth();
    float f4 = getHeight();
    f1 = Math.max(1.0F, Math.min(f3 / f1 * 0.6F, f4 / f2 * 0.6F) * getScale());
    if (Math.abs(f1 - getScale()) / f1 > 0.1D)
    {
      localObject = new float[2];
      localObject[0] = paramn.a.centerX();
      localObject[1] = paramn.a.centerY();
      getUnrotatedMatrix().mapPoints((float[])localObject);
      b(f1, localObject[0], localObject[1]);
    }
    paramn = paramn.b;
    int i = Math.max(0, getLeft() - paramn.left);
    int i2 = Math.min(0, getRight() - paramn.right);
    int j = Math.max(0, getTop() - paramn.top);
    int i1 = Math.min(0, getBottom() - paramn.bottom);
    if (i != 0)
      if (j == 0)
        break label232;
    while (true)
    {
      if ((i != 0) || (j != 0))
        b(i, j);
      return;
      i = i2;
      break;
      label232: j = i1;
    }
  }

  protected final void a(float paramFloat1, float paramFloat2)
  {
    super.a(paramFloat1, paramFloat2);
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      n localn = (n)localIterator.next();
      localn.c.postTranslate(paramFloat1, paramFloat2);
      localn.b();
    }
  }

  protected final void a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    super.a(paramFloat1, paramFloat2, paramFloat3);
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      n localn = (n)localIterator.next();
      localn.c.set(getUnrotatedMatrix());
      localn.b();
    }
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      n localn = (n)localIterator.next();
      paramCanvas.save();
      Path localPath = new Path();
      localn.f.setStrokeWidth(localn.q);
      if (!localn.r)
      {
        localn.f.setColor(-16777216);
        paramCanvas.drawRect(localn.b, localn.f);
      }
      else
      {
        Rect localRect = new Rect();
        localn.h.getDrawingRect(localRect);
        localPath.addRect(new RectF(localn.b), Path.Direction.CW);
        localn.f.setColor(localn.k);
        int i;
        if (Build.VERSION.SDK_INT != 17)
          if ((Build.VERSION.SDK_INT < 14) || (Build.VERSION.SDK_INT > 15))
          {
            i = 1;
            label177: if (i == 0)
              break label738;
            paramCanvas.clipPath(localPath, Region.Op.DIFFERENCE);
            paramCanvas.drawRect(localRect, localn.e);
          }
        while (true)
        {
          paramCanvas.restore();
          paramCanvas.drawPath(localPath, localn.f);
          if (localn.i)
          {
            localn.f.setStrokeWidth(1.0F);
            float f1 = (localn.b.right - localn.b.left) / 3;
            float f2 = (localn.b.bottom - localn.b.top) / 3;
            paramCanvas.drawLine(localn.b.left + f1, localn.b.top, localn.b.left + f1, localn.b.bottom, localn.f);
            paramCanvas.drawLine(f1 * 2.0F + localn.b.left, localn.b.top, localn.b.left + f1 * 2.0F, localn.b.bottom, localn.f);
            paramCanvas.drawLine(localn.b.left, localn.b.top + f2, localn.b.right, localn.b.top + f2, localn.f);
            paramCanvas.drawLine(localn.b.left, localn.b.top + f2 * 2.0F, localn.b.right, localn.b.top + f2 * 2.0F, localn.f);
          }
          if (localn.j)
          {
            localn.f.setStrokeWidth(1.0F);
            paramCanvas.drawOval(new RectF(localn.b), localn.f);
          }
          if ((localn.m != o.b) && ((localn.m != o.a) || (localn.l != p.c)))
            break;
          i = localn.b.left + (localn.b.right - localn.b.left) / 2;
          int j = localn.b.top + (localn.b.bottom - localn.b.top) / 2;
          paramCanvas.drawCircle(localn.b.left, j, localn.p, localn.g);
          paramCanvas.drawCircle(i, localn.b.top, localn.p, localn.g);
          paramCanvas.drawCircle(localn.b.right, j, localn.p, localn.g);
          paramCanvas.drawCircle(i, localn.b.bottom, localn.p, localn.g);
          break;
          if (!paramCanvas.isHardwareAccelerated())
          {
            i = 1;
            break label177;
          }
          i = 0;
          break label177;
          label738: paramCanvas.drawRect(0.0F, 0.0F, paramCanvas.getWidth(), localn.b.top, localn.e);
          paramCanvas.drawRect(0.0F, localn.b.bottom, paramCanvas.getWidth(), paramCanvas.getHeight(), localn.e);
          paramCanvas.drawRect(0.0F, localn.b.top, localn.b.left, localn.b.bottom, localn.e);
          paramCanvas.drawRect(localn.b.right, localn.b.top, paramCanvas.getWidth(), localn.b.bottom, localn.e);
        }
      }
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.f.a != null)
    {
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        n localn = (n)localIterator.next();
        localn.c.set(getUnrotatedMatrix());
        localn.b();
        if (localn.r)
          a(localn);
      }
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = true;
    boolean bool1;
    if (((CropImageActivity)this.c).a)
      bool1 = false;
    Object localObject1;
    label63: 
    do
    {
      return bool1;
      switch (paramMotionEvent.getAction())
      {
      default:
        return true;
      case 0:
        localObject1 = this.a.iterator();
        bool1 = bool2;
      case 1:
      case 2:
      }
    }
    while (!((Iterator)localObject1).hasNext());
    Object localObject2 = (n)((Iterator)localObject1).next();
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    Rect localRect = ((n)localObject2).a();
    int i2;
    int i1;
    if ((f2 >= localRect.top - 20.0F) && (f2 < localRect.bottom + 20.0F))
    {
      i2 = 1;
      if ((f1 < localRect.left - 20.0F) || (f1 >= localRect.right + 20.0F))
        break label410;
      i1 = 1;
      label172: if ((Math.abs(localRect.left - f1) >= 20.0F) || (i2 == 0))
        break label1413;
    }
    label1282: label1413: for (int j = 3; ; j = 1)
    {
      int i = j;
      if (Math.abs(localRect.right - f1) < 20.0F)
      {
        i = j;
        if (i2 != 0)
          i = j | 0x4;
      }
      j = i;
      if (Math.abs(localRect.top - f2) < 20.0F)
      {
        j = i;
        if (i1 != 0)
          j = i | 0x8;
      }
      if ((Math.abs(localRect.bottom - f2) < 20.0F) && (i1 != 0));
      for (i = j | 0x10; ; i = j)
      {
        j = i;
        if (i == 1)
        {
          j = i;
          if (localRect.contains((int)f1, (int)f2))
            j = 32;
        }
        if (j == 1)
          break label63;
        this.m = j;
        this.b = ((n)localObject2);
        this.k = paramMotionEvent.getX();
        this.l = paramMotionEvent.getY();
        this.n = paramMotionEvent.getPointerId(paramMotionEvent.getActionIndex());
        paramMotionEvent = this.b;
        if (j == 32);
        for (i = p.b; ; i = p.c)
        {
          paramMotionEvent.a(i);
          return true;
          i2 = 0;
          break;
          label410: i1 = 0;
          break label172;
        }
        if (this.b != null)
        {
          a(this.b);
          this.b.a(p.a);
        }
        this.b = null;
        b();
        return true;
        if ((this.b != null) && (paramMotionEvent.getPointerId(paramMotionEvent.getActionIndex()) == this.n))
        {
          localObject1 = this.b;
          j = this.m;
          f1 = paramMotionEvent.getX() - this.k;
          f2 = paramMotionEvent.getY() - this.l;
          localObject2 = ((n)localObject1).a();
          if (j == 32)
          {
            f3 = ((n)localObject1).a.width() / ((Rect)localObject2).width();
            f4 = ((n)localObject1).a.height() / ((Rect)localObject2).height();
            localObject2 = new Rect(((n)localObject1).b);
            ((n)localObject1).a.offset(f1 * f3, f2 * f4);
            ((n)localObject1).a.offset(Math.max(0.0F, ((n)localObject1).d.left - ((n)localObject1).a.left), Math.max(0.0F, ((n)localObject1).d.top - ((n)localObject1).a.top));
            ((n)localObject1).a.offset(Math.min(0.0F, ((n)localObject1).d.right - ((n)localObject1).a.right), Math.min(0.0F, ((n)localObject1).d.bottom - ((n)localObject1).a.bottom));
            ((n)localObject1).b = ((n)localObject1).a();
            ((Rect)localObject2).union(((n)localObject1).b);
            ((Rect)localObject2).inset(-(int)((n)localObject1).p, -(int)((n)localObject1).p);
            ((n)localObject1).h.invalidate((Rect)localObject2);
            this.k = paramMotionEvent.getX();
            this.l = paramMotionEvent.getY();
          }
        }
        else
        {
          bool1 = bool2;
          if (getScale() != 1.0F)
            break;
          b();
          return true;
        }
        if ((j & 0x6) == 0)
          f1 = 0.0F;
        if ((j & 0x18) == 0)
          f2 = 0.0F;
        float f4 = ((n)localObject1).a.width() / ((Rect)localObject2).width();
        float f3 = ((n)localObject1).a.height() / ((Rect)localObject2).height();
        if ((j & 0x2) != 0)
        {
          i = -1;
          label840: f1 = f1 * f4 * i;
          if ((j & 0x8) == 0)
            break label1282;
          i = -1;
          label860: f4 = i * (f3 * f2);
          f2 = f4;
          f3 = f1;
          if (((n)localObject1).n)
          {
            if (f1 == 0.0F)
              break label1288;
            f2 = f1 / ((n)localObject1).o;
            f3 = f1;
          }
          label901: localObject2 = new RectF(((n)localObject1).a);
          f4 = f2;
          f1 = f3;
          if (f3 > 0.0F)
          {
            f4 = f2;
            f1 = f3;
            if (((RectF)localObject2).width() + 2.0F * f3 > ((n)localObject1).d.width())
            {
              f3 = (((n)localObject1).d.width() - ((RectF)localObject2).width()) / 2.0F;
              f4 = f2;
              f1 = f3;
              if (((n)localObject1).n)
              {
                f4 = f3 / ((n)localObject1).o;
                f1 = f3;
              }
            }
          }
          f2 = f4;
          f3 = f1;
          if (f4 > 0.0F)
          {
            f2 = f4;
            f3 = f1;
            if (((RectF)localObject2).height() + 2.0F * f4 > ((n)localObject1).d.height())
            {
              f4 = (((n)localObject1).d.height() - ((RectF)localObject2).height()) / 2.0F;
              f2 = f4;
              f3 = f1;
              if (((n)localObject1).n)
              {
                f3 = ((n)localObject1).o * f4;
                f2 = f4;
              }
            }
          }
          ((RectF)localObject2).inset(-f3, -f2);
          if (((RectF)localObject2).width() < 25.0F)
            ((RectF)localObject2).inset(-(25.0F - ((RectF)localObject2).width()) / 2.0F, 0.0F);
          if (!((n)localObject1).n)
            break label1317;
          f1 = 25.0F / ((n)localObject1).o;
          label1145: if (((RectF)localObject2).height() < f1)
            ((RectF)localObject2).inset(0.0F, -(f1 - ((RectF)localObject2).height()) / 2.0F);
          if (((RectF)localObject2).left >= ((n)localObject1).d.left)
            break label1324;
          ((RectF)localObject2).offset(((n)localObject1).d.left - ((RectF)localObject2).left, 0.0F);
          label1208: if (((RectF)localObject2).top >= ((n)localObject1).d.top)
            break label1365;
          ((RectF)localObject2).offset(0.0F, ((n)localObject1).d.top - ((RectF)localObject2).top);
        }
        while (true)
        {
          ((n)localObject1).a.set((RectF)localObject2);
          ((n)localObject1).b = ((n)localObject1).a();
          ((n)localObject1).h.invalidate();
          break;
          i = 1;
          break label840;
          i = 1;
          break label860;
          label1288: f2 = f4;
          f3 = f1;
          if (f4 == 0.0F)
            break label901;
          f3 = ((n)localObject1).o * f4;
          f2 = f4;
          break label901;
          label1317: f1 = 25.0F;
          break label1145;
          label1324: if (((RectF)localObject2).right <= ((n)localObject1).d.right)
            break label1208;
          ((RectF)localObject2).offset(-(((RectF)localObject2).right - ((n)localObject1).d.right), 0.0F);
          break label1208;
          label1365: if (((RectF)localObject2).bottom > ((n)localObject1).d.bottom)
            ((RectF)localObject2).offset(0.0F, -(((RectF)localObject2).bottom - ((n)localObject1).d.bottom));
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.soundcloud.android.crop.CropImageView
 * JD-Core Version:    0.6.2
 */