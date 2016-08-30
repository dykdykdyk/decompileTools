package android.support.v4.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater.Factory;
import android.view.View;

class af
  implements LayoutInflater.Factory
{
  final ai a;

  af(ai paramai)
  {
    this.a = paramai;
  }

  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return this.a.a(null, paramString, paramContext, paramAttributeSet);
  }

  public String toString()
  {
    return getClass().getName() + "{" + this.a + "}";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.af
 * JD-Core Version:    0.6.2
 */