package android.support.v7.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListView;

public final class k extends ArrayAdapter<CharSequence>
{
  public k(j paramj, Context paramContext, int paramInt, CharSequence[] paramArrayOfCharSequence, ListView paramListView)
  {
    super(paramContext, paramInt, 16908308, paramArrayOfCharSequence);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = super.getView(paramInt, paramView, paramViewGroup);
    if ((this.b.C != null) && (this.b.C[paramInt] != 0))
      this.a.setItemChecked(paramInt, true);
    return paramView;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.k
 * JD-Core Version:    0.6.2
 */