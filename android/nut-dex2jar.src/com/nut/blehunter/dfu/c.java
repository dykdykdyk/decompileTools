package com.nut.blehunter.dfu;

import android.text.TextUtils;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.h;
import com.nut.blehunter.provider.i;
import com.nut.blehunter.provider.j;
import java.io.File;

final class c
  implements Runnable
{
  c(b paramb)
  {
  }

  public final void run()
  {
    DfuActivity.d(this.a.a);
    DfuActivity.e(this.a.a).K = 0;
    i.b().a(DfuActivity.e(this.a.a), true);
    if (DfuActivity.f(this.a.a) != null)
      DfuActivity.f(this.a.a).delete();
    if ((DfuActivity.e(this.a.a) != null) && (DfuActivity.g(this.a.a) != null) && (i.b().a(DfuActivity.e(this.a.a).p, DfuActivity.e(this.a.a).j, DfuActivity.g(this.a.a).b)) && (!TextUtils.isEmpty(DfuActivity.g(this.a.a).d)))
    {
      File localFile = new File(DfuActivity.g(this.a.a).d);
      if (localFile.exists())
        localFile.delete();
      DfuActivity.g(this.a.a).d = "";
      j.b().a(DfuActivity.e(this.a.a).p, DfuActivity.g(this.a.a));
    }
    if (this.a.a.isFinishing())
      return;
    DfuActivity.h(this.a.a).setProgress(100);
    DfuActivity.i(this.a.a).setText("100%");
    DfuActivity.j(this.a.a).setText(2131099870);
    DfuActivity.k(this.a.a);
    DfuActivity.l(this.a.a);
    com.umeng.analytics.b.a(this.a.a, "dfu_workflow_succeeded");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.dfu.c
 * JD-Core Version:    0.6.2
 */