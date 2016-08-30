package android.support.v7.a;

import android.support.v4.view.bd;
import android.support.v4.view.bl;
import android.support.v4.view.dw;
import android.view.View;

final class ae
  implements bd
{
  ae(ac paramac)
  {
  }

  public final dw a(View paramView, dw paramdw)
  {
    int i = paramdw.b();
    int j = ac.b(this.a, i);
    dw localdw = paramdw;
    if (i != j)
      localdw = paramdw.a(paramdw.a(), j, paramdw.c(), paramdw.d());
    return bl.a(paramView, localdw);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.ae
 * JD-Core Version:    0.6.2
 */