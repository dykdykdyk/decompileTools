package android.support.v4.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.Transition.EpicenterCallback;

final class ar extends Transition.EpicenterCallback
{
  private Rect b;

  ar(at paramat)
  {
  }

  public final Rect onGetEpicenter(Transition paramTransition)
  {
    if ((this.b == null) && (this.a.a != null))
      this.b = ao.a(this.a.a);
    return this.b;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.ar
 * JD-Core Version:    0.6.2
 */