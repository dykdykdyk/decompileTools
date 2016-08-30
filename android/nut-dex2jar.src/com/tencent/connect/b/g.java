package com.tencent.connect.b;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.tauth.b;

final class g
  implements DialogInterface.OnCancelListener
{
  g(d paramd, b paramb, Object paramObject)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (this.a != null)
      this.a.a(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.b.g
 * JD-Core Version:    0.6.2
 */