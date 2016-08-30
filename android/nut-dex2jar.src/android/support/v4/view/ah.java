package android.support.v4.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater.Factory2;
import android.view.View;

final class ah extends af
  implements LayoutInflater.Factory2
{
  ah(ai paramai)
  {
    super(paramai);
  }

  public final View onCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return this.a.a(paramView, paramString, paramContext, paramAttributeSet);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ah
 * JD-Core Version:    0.6.2
 */