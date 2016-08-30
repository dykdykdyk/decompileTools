package com.baidu.android.pushservice.richmedia;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RemoteViews;
import com.baidu.android.pushservice.util.k;
import com.baidu.android.pushservice.util.k.g;
import com.baidu.android.pushservice.util.m;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class MediaListActivity extends Activity
{
  private static String r = "downloadUrl";
  ArrayList<HashMap<String, Object>> a;
  NotificationManager b;
  private ListView c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  private int i;
  private int j;
  private int k;
  private LinearLayout l = null;
  private RemoteViews m;
  private int n;
  private int o;
  private int p;
  private int q;
  private final AdapterView.OnItemClickListener s = new MediaListActivity.2(this);
  private final AdapterView.OnItemLongClickListener t = new MediaListActivity.3(this);

  private void a(String paramString1, String paramString2, String paramString3)
  {
    Object localObject = Uri.parse(paramString1);
    String str = ((Uri)localObject).getPath();
    paramString1 = new String();
    if (str.length() > 0)
      paramString1 = str.substring(0, str.lastIndexOf('/'));
    paramString1 = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/baidu/pushservice/files/" + ((Uri)localObject).getAuthority() + "/" + paramString1);
    com.baidu.android.pushservice.h.a.c("MediaListActivity", "<<< download url " + ((Uri)localObject).toString());
    localObject = d.a(c.a.a, ((Uri)localObject).toString());
    ((c)localObject).b = paramString1.getAbsolutePath();
    ((c)localObject).c = paramString2;
    ((c)localObject).d = paramString3;
    new a(this, new MediaListActivity.4(this), (c)localObject).start();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.d = getResources().getIdentifier("bpush_media_list", "layout", getPackageName());
    requestWindowFeature(1);
    if (this.d != 0)
    {
      setContentView(this.d);
      paramBundle = getResources();
      String str = getPackageName();
      this.e = paramBundle.getIdentifier("bpush_media_list_item", "layout", str);
      this.f = paramBundle.getIdentifier("bpush_type_listview", "id", str);
      this.g = paramBundle.getIdentifier("bpush_media_list_img", "id", str);
      this.h = paramBundle.getIdentifier("bpush_media_list_title", "id", str);
      this.i = paramBundle.getIdentifier("bpush_media_list_from_text", "id", str);
      this.j = paramBundle.getIdentifier("bpush_media_list_time_text", "id", str);
      this.k = paramBundle.getIdentifier("bpush_media_none_layout", "id", str);
      this.l = ((LinearLayout)findViewById(this.k));
      this.c = ((ListView)findViewById(this.f));
      paramBundle = (Button)findViewById(paramBundle.getIdentifier("bpush_media_list_return_btn", "id", str));
      paramBundle.setClickable(true);
      paramBundle.setOnClickListener(new MediaListActivity.1(this));
      int i1 = getResources().getIdentifier("bpush_download_progress", "layout", getPackageName());
      if (i1 != 0)
      {
        this.m = new RemoteViews(getPackageName(), i1);
        this.n = getResources().getIdentifier("bpush_downLoad_progress", "id", getPackageName());
        this.o = getResources().getIdentifier("bpush_progress_percent", "id", getPackageName());
        this.p = getResources().getIdentifier("bpush_progress_text", "id", getPackageName());
        this.q = getResources().getIdentifier("bpush_downLoad_icon", "id", getPackageName());
      }
      this.c.setOnItemClickListener(this.s);
      this.c.setDividerHeight(0);
      this.c.setOnItemLongClickListener(this.t);
    }
    this.b = ((NotificationManager)getSystemService("notification"));
  }

  public void onResume()
  {
    super.onResume();
    List localList;
    if (this.d != 0)
    {
      localObject = new String[4];
      localObject[0] = "img";
      localObject[1] = "title";
      localObject[2] = "fromtext";
      localObject[3] = "timetext";
      this.a = new ArrayList();
      localList = k.b(this);
      if ((localList == null) || (localList.isEmpty()))
      {
        this.l.setVisibility(0);
        this.c.setVisibility(8);
      }
    }
    else
    {
      return;
    }
    this.l.setVisibility(8);
    this.c.setVisibility(0);
    this.c.setItemsCanFocus(true);
    PackageManager localPackageManager = getPackageManager();
    int i1 = 0;
    while (true)
      if (i1 < localList.size())
      {
        HashMap localHashMap = new HashMap();
        try
        {
          ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(((k.g)localList.get(i1)).a, 0);
          localHashMap.put(localObject[0], localPackageManager.getApplicationIcon(localApplicationInfo));
          localHashMap.put(localObject[1], ((k.g)localList.get(i1)).c);
          localHashMap.put(localObject[2], "来自：" + localPackageManager.getApplicationLabel(localApplicationInfo));
          localHashMap.put(localObject[3], m.a(((k.g)localList.get(i1)).j));
          localHashMap.put(r, ((k.g)localList.get(i1)).b);
          this.a.add(localHashMap);
          i1 += 1;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          while (true)
            com.baidu.android.pushservice.h.a.d("MediaListActivity", "Media item package NOT found: " + ((k.g)localList.get(i1)).a);
        }
      }
    Object localObject = new MediaListActivity.a(this, this, this.a);
    this.c.setAdapter((ListAdapter)localObject);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.richmedia.MediaListActivity
 * JD-Core Version:    0.6.2
 */