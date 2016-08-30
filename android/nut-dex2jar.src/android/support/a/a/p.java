package android.support.a.a;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Region.Op;
import android.support.v4.f.a;
import java.util.ArrayList;

final class p
{
  private static final Matrix j = new Matrix();
  float a = 0.0F;
  float b = 0.0F;
  float c = 0.0F;
  float d = 0.0F;
  int e = 255;
  String f = null;
  final a<String, Object> g = new a();
  private final Path h;
  private final Path i;
  private final Matrix k = new Matrix();
  private Paint l;
  private Paint m;
  private PathMeasure n;
  private int o;
  private final n p;

  public p()
  {
    this.p = new n();
    this.h = new Path();
    this.i = new Path();
  }

  public p(p paramp)
  {
    this.p = new n(paramp.p, this.g);
    this.h = new Path(paramp.h);
    this.i = new Path(paramp.i);
    this.a = paramp.a;
    this.b = paramp.b;
    this.c = paramp.c;
    this.d = paramp.d;
    this.o = paramp.o;
    this.e = paramp.e;
    this.f = paramp.f;
    if (paramp.f != null)
      this.g.put(paramp.f, this);
  }

  private void a(n paramn, Matrix paramMatrix, Canvas paramCanvas, int paramInt1, int paramInt2, ColorFilter paramColorFilter)
  {
    paramn.a.set(paramMatrix);
    paramn.a.preConcat(paramn.j);
    int i1 = 0;
    if (i1 < paramn.b.size())
    {
      paramMatrix = paramn.b.get(i1);
      if ((paramMatrix instanceof n))
        a((n)paramMatrix, paramn.a, paramCanvas, paramInt1, paramInt2, paramColorFilter);
      float f1;
      float f3;
      float f2;
      Object localObject;
      float f7;
      float f4;
      float f5;
      float f6;
      while (true)
      {
        i1 += 1;
        break;
        if ((paramMatrix instanceof o))
        {
          paramMatrix = (o)paramMatrix;
          f1 = paramInt1 / this.c;
          f3 = paramInt2 / this.d;
          f2 = Math.min(f1, f3);
          localObject = paramn.a;
          this.k.set((Matrix)localObject);
          this.k.postScale(f1, f3);
          float[] arrayOfFloat = new float[4];
          float[] tmp155_153 = arrayOfFloat;
          tmp155_153[0] = 0.0F;
          float[] tmp159_155 = tmp155_153;
          tmp159_155[1] = 1.0F;
          float[] tmp163_159 = tmp159_155;
          tmp163_159[2] = 1.0F;
          float[] tmp167_163 = tmp163_159;
          tmp167_163[3] = 0.0F;
          tmp167_163;
          ((Matrix)localObject).mapVectors(arrayOfFloat);
          f1 = (float)Math.hypot(arrayOfFloat[0], arrayOfFloat[1]);
          f7 = (float)Math.hypot(arrayOfFloat[2], arrayOfFloat[3]);
          f3 = arrayOfFloat[0];
          f4 = arrayOfFloat[1];
          f5 = arrayOfFloat[2];
          f6 = arrayOfFloat[3];
          f7 = Math.max(f1, f7);
          f1 = 0.0F;
          if (f7 > 0.0F)
            f1 = Math.abs(f6 * f3 - f4 * f5) / f7;
          if (f1 != 0.0F)
          {
            paramMatrix.a(this.h);
            localObject = this.h;
            this.i.reset();
            if (!paramMatrix.a())
              break label336;
            this.i.addPath((Path)localObject, this.k);
            paramCanvas.clipPath(this.i, Region.Op.REPLACE);
          }
        }
      }
      label336: paramMatrix = (m)paramMatrix;
      if ((paramMatrix.g != 0.0F) || (paramMatrix.h != 1.0F))
      {
        f6 = paramMatrix.g;
        f7 = paramMatrix.i;
        f4 = paramMatrix.h;
        f5 = paramMatrix.i;
        if (this.n == null)
          this.n = new PathMeasure();
        this.n.setPath(this.h, false);
        f3 = this.n.getLength();
        f6 = (f6 + f7) % 1.0F * f3;
        f4 = (f4 + f5) % 1.0F * f3;
        ((Path)localObject).reset();
        if (f6 <= f4)
          break label733;
        this.n.getSegment(f6, f3, (Path)localObject, true);
        this.n.getSegment(0.0F, f4, (Path)localObject, true);
      }
      while (true)
      {
        ((Path)localObject).rLineTo(0.0F, 0.0F);
        this.i.addPath((Path)localObject, this.k);
        if (paramMatrix.c != 0)
        {
          if (this.m == null)
          {
            this.m = new Paint();
            this.m.setStyle(Paint.Style.FILL);
            this.m.setAntiAlias(true);
          }
          localObject = this.m;
          ((Paint)localObject).setColor(k.a(paramMatrix.c, paramMatrix.f));
          ((Paint)localObject).setColorFilter(paramColorFilter);
          paramCanvas.drawPath(this.i, (Paint)localObject);
        }
        if (paramMatrix.a == 0)
          break;
        if (this.l == null)
        {
          this.l = new Paint();
          this.l.setStyle(Paint.Style.STROKE);
          this.l.setAntiAlias(true);
        }
        localObject = this.l;
        if (paramMatrix.k != null)
          ((Paint)localObject).setStrokeJoin(paramMatrix.k);
        if (paramMatrix.j != null)
          ((Paint)localObject).setStrokeCap(paramMatrix.j);
        ((Paint)localObject).setStrokeMiter(paramMatrix.l);
        ((Paint)localObject).setColor(k.a(paramMatrix.a, paramMatrix.d));
        ((Paint)localObject).setColorFilter(paramColorFilter);
        ((Paint)localObject).setStrokeWidth(f1 * f2 * paramMatrix.b);
        paramCanvas.drawPath(this.i, (Paint)localObject);
        break;
        label733: this.n.getSegment(f6, f4, (Path)localObject, true);
      }
    }
  }

  public final void a(Canvas paramCanvas, int paramInt1, int paramInt2)
  {
    a(this.p, j, paramCanvas, paramInt1, paramInt2, null);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.a.a.p
 * JD-Core Version:    0.6.2
 */