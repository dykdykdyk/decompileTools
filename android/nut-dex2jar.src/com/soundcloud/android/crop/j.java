package com.soundcloud.android.crop;

import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import java.util.ArrayList;

final class j
  implements Runnable
{
  j(i parami)
  {
  }

  public final void run()
  {
    Object localObject = this.a;
    n localn;
    int n;
    int m;
    Rect localRect;
    int j;
    int i;
    if (CropImageActivity.d(((i)localObject).a) != null)
    {
      localn = new n(CropImageActivity.b(((i)localObject).a));
      n = CropImageActivity.d(((i)localObject).a).b();
      m = CropImageActivity.d(((i)localObject).a).a();
      localRect = new Rect(0, 0, n, m);
      j = Math.min(n, m) * 4 / 5;
      if ((CropImageActivity.e(((i)localObject).a) == 0) || (CropImageActivity.f(((i)localObject).a) == 0))
        break label536;
      if (CropImageActivity.e(((i)localObject).a) <= CropImageActivity.f(((i)localObject).a))
        break label503;
      i = CropImageActivity.f(((i)localObject).a) * j / CropImageActivity.e(((i)localObject).a);
    }
    while (true)
    {
      int k = (n - j) / 2;
      m = (m - i) / 2;
      RectF localRectF = new RectF(k, m, j + k, i + m);
      Matrix localMatrix = CropImageActivity.b(((i)localObject).a).getUnrotatedMatrix();
      if ((CropImageActivity.e(((i)localObject).a) != 0) && (CropImageActivity.f(((i)localObject).a) != 0));
      for (boolean bool = true; ; bool = false)
      {
        localn.c = new Matrix(localMatrix);
        localn.a = localRectF;
        localn.d = new RectF(localRect);
        localn.n = bool;
        localn.o = (localn.a.width() / localn.a.height());
        localn.b = localn.a();
        localn.e.setARGB(125, 50, 50, 50);
        localn.f.setStyle(Paint.Style.STROKE);
        localn.f.setAntiAlias(true);
        localn.q = localn.a(2.0F);
        localn.g.setColor(localn.k);
        localn.g.setStyle(Paint.Style.FILL);
        localn.g.setAntiAlias(true);
        localn.p = localn.a(12.0F);
        localn.l = p.a;
        localObject = CropImageActivity.b(((i)localObject).a);
        ((CropImageView)localObject).a.add(localn);
        ((CropImageView)localObject).invalidate();
        CropImageActivity.b(this.a.a).invalidate();
        if (CropImageActivity.b(this.a.a).a.size() == 1)
        {
          CropImageActivity.a(this.a.a, (n)CropImageActivity.b(this.a.a).a.get(0));
          CropImageActivity.g(this.a.a).r = true;
        }
        return;
        label503: k = CropImageActivity.e(((i)localObject).a) * j / CropImageActivity.f(((i)localObject).a);
        i = j;
        j = k;
        break;
      }
      label536: i = j;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.soundcloud.android.crop.j
 * JD-Core Version:    0.6.2
 */