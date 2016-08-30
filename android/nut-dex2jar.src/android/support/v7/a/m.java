package android.support.v7.a;

import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

public final class m
  implements AdapterView.OnItemClickListener
{
  public m(j paramj, d paramd)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.b.u.onClick(this.a.b, paramInt);
    if (!this.b.E)
      this.a.b.dismiss();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.m
 * JD-Core Version:    0.6.2
 */