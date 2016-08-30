package com.nut.blehunter.ui.b.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.nut.blehunter.d.f;
import com.nut.blehunter.entity.CustomMarker;
import java.util.List;

final class q
  implements View.OnClickListener
{
  q(p paramp, o paramo)
  {
  }

  public final void onClick(View paramView)
  {
    paramView = this.b.n.d;
    Object localObject2 = this.b.n.c;
    Object localObject1 = (ResolveInfo)n.a(this.b.n.d).get(this.b.d());
    CustomMarker localCustomMarker = n.b(this.b.n.d);
    if ((localObject1 == null) || (localCustomMarker == null));
    do
    {
      this.b.n.d.dismissAllowingStateLoss();
      return;
      localObject1 = ((ResolveInfo)localObject1).activityInfo.packageName;
      localObject2 = ((Context)localObject2).getPackageManager().getLaunchIntentForPackage((String)localObject1);
    }
    while (localObject2 == null);
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(String.format(paramView.a, new Object[] { Double.valueOf(localCustomMarker.g), Double.valueOf(localCustomMarker.h), localCustomMarker.c })));
    ((Intent)localObject2).setAction(localIntent.getAction());
    if (((String)localObject1).contains("autonavi"))
    {
      localObject1 = f.a(localCustomMarker.g, localCustomMarker.h);
      ((Intent)localObject2).setData(Uri.parse(String.format(paramView.a, new Object[] { Double.valueOf(localObject1[0]), Double.valueOf(localObject1[1]), localCustomMarker.c })));
    }
    while (true)
    {
      paramView.startActivity((Intent)localObject2);
      break;
      ((Intent)localObject2).setData(localIntent.getData());
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.a.q
 * JD-Core Version:    0.6.2
 */