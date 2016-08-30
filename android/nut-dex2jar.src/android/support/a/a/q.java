package android.support.a.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

final class q extends Drawable.ConstantState
{
  int a;
  p b;
  ColorStateList c = null;
  PorterDuff.Mode d = k.b;
  boolean e;
  Bitmap f;
  ColorStateList g;
  PorterDuff.Mode h;
  int i;
  boolean j;
  boolean k;
  Paint l;

  public q()
  {
    this.b = new p();
  }

  public q(q paramq)
  {
    if (paramq != null)
    {
      this.a = paramq.a;
      this.b = new p(paramq.b);
      if (p.b(paramq.b) != null)
        p.a(this.b, new Paint(p.b(paramq.b)));
      if (p.c(paramq.b) != null)
        p.b(this.b, new Paint(p.c(paramq.b)));
      this.c = paramq.c;
      this.d = paramq.d;
      this.e = paramq.e;
    }
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.f.eraseColor(0);
    Canvas localCanvas = new Canvas(this.f);
    this.b.a(localCanvas, paramInt1, paramInt2);
  }

  public final int getChangingConfigurations()
  {
    return this.a;
  }

  public final Drawable newDrawable()
  {
    return new k(this, (byte)0);
  }

  public final Drawable newDrawable(Resources paramResources)
  {
    return new k(this, (byte)0);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.a.a.q
 * JD-Core Version:    0.6.2
 */