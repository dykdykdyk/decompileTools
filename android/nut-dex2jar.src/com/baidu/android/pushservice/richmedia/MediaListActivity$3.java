package com.baidu.android.pushservice.richmedia;

import android.app.AlertDialog.Builder;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;

class MediaListActivity$3
  implements AdapterView.OnItemLongClickListener
{
  MediaListActivity$3(MediaListActivity paramMediaListActivity)
  {
  }

  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    new AlertDialog.Builder(this.a).setTitle("提示").setMessage("确定要删除该记录？").setPositiveButton("确定", new MediaListActivity.3.2(this, paramLong)).setNegativeButton("取消", new MediaListActivity.3.1(this)).show();
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.richmedia.MediaListActivity.3
 * JD-Core Version:    0.6.2
 */