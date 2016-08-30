package android.support.v7.a;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;

final class e
  implements View.OnClickListener
{
  e(d paramd)
  {
  }

  public final void onClick(View paramView)
  {
    if ((paramView == this.a.n) && (this.a.p != null))
      paramView = Message.obtain(this.a.p);
    while (true)
    {
      if (paramView != null)
        paramView.sendToTarget();
      this.a.M.obtainMessage(1, this.a.b).sendToTarget();
      return;
      if ((paramView == this.a.q) && (this.a.s != null))
        paramView = Message.obtain(this.a.s);
      else if ((paramView == this.a.t) && (this.a.v != null))
        paramView = Message.obtain(this.a.v);
      else
        paramView = null;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.e
 * JD-Core Version:    0.6.2
 */