package com.baidu.android.pushservice.richmedia;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.baidu.android.pushservice.util.k;
import com.baidu.android.pushservice.util.k.g;
import java.io.File;
import java.util.HashMap;

class MediaListActivity$2
  implements AdapterView.OnItemClickListener
{
  MediaListActivity$2(MediaListActivity paramMediaListActivity)
  {
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (String)((HashMap)paramAdapterView.getItemAtPosition(paramInt)).get(MediaListActivity.a());
    paramView = k.a(this.a, paramAdapterView);
    if (paramView != null)
    {
      if (paramView.i != a.f)
        break label148;
      paramAdapterView = paramView.e;
      paramView = paramView.f;
      if (paramView.length() > 0)
      {
        paramAdapterView = paramAdapterView + "/" + paramView.substring(0, paramView.lastIndexOf(".")) + "/index.html";
        paramView = new Intent();
        paramView.setClass(this.a, MediaViewActivity.class);
        paramView.setData(Uri.fromFile(new File(paramAdapterView)));
        paramView.addFlags(268435456);
        this.a.startActivity(paramView);
      }
    }
    return;
    label148: MediaListActivity.a(this.a, paramView.b, paramView.c, paramView.d);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.richmedia.MediaListActivity.2
 * JD-Core Version:    0.6.2
 */