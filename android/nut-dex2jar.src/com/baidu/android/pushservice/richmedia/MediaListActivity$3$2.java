package com.baidu.android.pushservice.richmedia;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.baidu.android.pushservice.util.k;
import com.baidu.android.pushservice.util.k.g;
import java.io.File;
import java.util.ArrayList;
import java.util.Map;

class MediaListActivity$3$2
  implements DialogInterface.OnClickListener
{
  MediaListActivity$3$2(MediaListActivity.3 param3, long paramLong)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = (String)((Map)this.b.a.a.get((int)this.a)).get(MediaListActivity.a());
    k.g localg = k.a(this.b.a, paramDialogInterface);
    if (localg != null)
      new File(localg.e).delete();
    k.b(this.b.a, paramDialogInterface);
    paramDialogInterface = new Intent();
    paramDialogInterface.setClass(this.b.a, MediaListActivity.class);
    this.b.a.startActivity(paramDialogInterface);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.richmedia.MediaListActivity.3.2
 * JD-Core Version:    0.6.2
 */