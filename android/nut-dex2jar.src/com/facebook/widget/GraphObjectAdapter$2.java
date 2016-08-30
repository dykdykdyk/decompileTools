package com.facebook.widget;

import android.widget.ImageView;
import com.facebook.internal.ImageRequest.Callback;
import com.facebook.internal.ImageResponse;

class GraphObjectAdapter$2
  implements ImageRequest.Callback
{
  GraphObjectAdapter$2(GraphObjectAdapter paramGraphObjectAdapter, String paramString, ImageView paramImageView)
  {
  }

  public void onCompleted(ImageResponse paramImageResponse)
  {
    GraphObjectAdapter.access$200(this.this$0, paramImageResponse, this.val$profileId, this.val$imageView);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.GraphObjectAdapter.2
 * JD-Core Version:    0.6.2
 */