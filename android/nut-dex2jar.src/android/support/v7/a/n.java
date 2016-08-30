package android.support.v7.a;

import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

public final class n
  implements AdapterView.OnItemClickListener
{
  public n(j paramj, ListView paramListView, d paramd)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (this.c.C != null)
      this.c.C[paramInt] = this.a.isItemChecked(paramInt);
    this.c.G.onClick(this.b.b, paramInt, this.a.isItemChecked(paramInt));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.n
 * JD-Core Version:    0.6.2
 */