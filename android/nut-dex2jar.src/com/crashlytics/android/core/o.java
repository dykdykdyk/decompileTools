package com.crashlytics.android.core;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;

final class o
  implements Runnable
{
  o(h paramh, Activity paramActivity, u paramu, aw paramaw, io.fabric.sdk.android.services.e.o paramo)
  {
  }

  public final void run()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a);
    Object localObject1 = new p(this);
    float f = this.a.getResources().getDisplayMetrics().density;
    int i = h.a(f, 5);
    Object localObject2 = new TextView(this.a);
    ((TextView)localObject2).setAutoLinkMask(15);
    Object localObject3 = this.c;
    ((TextView)localObject2).setText(((aw)localObject3).a("com.crashlytics.CrashSubmissionPromptMessage", ((aw)localObject3).a.b));
    ((TextView)localObject2).setTextAppearance(this.a, 16973892);
    ((TextView)localObject2).setPadding(i, i, i, i);
    ((TextView)localObject2).setFocusable(false);
    localObject3 = new ScrollView(this.a);
    ((ScrollView)localObject3).setPadding(h.a(f, 14), h.a(f, 2), h.a(f, 10), h.a(f, 12));
    ((ScrollView)localObject3).addView((View)localObject2);
    localObject2 = localBuilder.setView((View)localObject3);
    localObject3 = this.c;
    localObject2 = ((AlertDialog.Builder)localObject2).setTitle(((aw)localObject3).a("com.crashlytics.CrashSubmissionPromptTitle", ((aw)localObject3).a.a)).setCancelable(false);
    localObject3 = this.c;
    ((AlertDialog.Builder)localObject2).setNeutralButton(((aw)localObject3).a("com.crashlytics.CrashSubmissionSendTitle", ((aw)localObject3).a.c), (DialogInterface.OnClickListener)localObject1);
    if (this.d.d)
    {
      localObject1 = new q(this);
      localObject2 = this.c;
      localBuilder.setNegativeButton(((aw)localObject2).a("com.crashlytics.CrashSubmissionCancelTitle", ((aw)localObject2).a.e), (DialogInterface.OnClickListener)localObject1);
    }
    if (this.d.f)
    {
      localObject1 = new r(this);
      localObject2 = this.c;
      localBuilder.setPositiveButton(((aw)localObject2).a("com.crashlytics.CrashSubmissionAlwaysSendTitle", ((aw)localObject2).a.g), (DialogInterface.OnClickListener)localObject1);
    }
    localBuilder.show();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.o
 * JD-Core Version:    0.6.2
 */