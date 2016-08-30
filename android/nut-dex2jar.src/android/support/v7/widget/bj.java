package android.support.v7.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;

final class bj
  implements AdapterView.OnItemClickListener
{
  bj(bi parambi, bf parambf)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.b.b.setSelection(paramInt);
    if (this.b.b.getOnItemClickListener() != null)
      this.b.b.performItemClick(paramView, paramInt, bi.a(this.b).getItemId(paramInt));
    this.b.d();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.bj
 * JD-Core Version:    0.6.2
 */