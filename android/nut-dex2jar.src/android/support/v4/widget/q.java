package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.EdgeEffect;

class q
  implements r
{
  public final Object a(Context paramContext)
  {
    return new EdgeEffect(paramContext);
  }

  public final void a(Object paramObject, int paramInt1, int paramInt2)
  {
    ((EdgeEffect)paramObject).setSize(paramInt1, paramInt2);
  }

  public final boolean a(Object paramObject)
  {
    return ((EdgeEffect)paramObject).isFinished();
  }

  public final boolean a(Object paramObject, float paramFloat)
  {
    return t.a(paramObject, paramFloat);
  }

  public boolean a(Object paramObject, float paramFloat1, float paramFloat2)
  {
    return t.a(paramObject, paramFloat1);
  }

  public final boolean a(Object paramObject, int paramInt)
  {
    ((EdgeEffect)paramObject).onAbsorb(paramInt);
    return true;
  }

  public final boolean a(Object paramObject, Canvas paramCanvas)
  {
    return ((EdgeEffect)paramObject).draw(paramCanvas);
  }

  public final void b(Object paramObject)
  {
    ((EdgeEffect)paramObject).finish();
  }

  public final boolean c(Object paramObject)
  {
    paramObject = (EdgeEffect)paramObject;
    paramObject.onRelease();
    return paramObject.isFinished();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.q
 * JD-Core Version:    0.6.2
 */