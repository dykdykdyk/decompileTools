package com.nut.blehunter.ui.b.a;

import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.nut.blehunter.n;
import com.nut.blehunter.ui.widget.CircleImageView;

public final class f extends a
{
  public static f a(String paramString1, String paramString2, b paramb)
  {
    f localf = new f();
    localf.a(paramb);
    paramb = new Bundle();
    paramb.putInt("drawable_id", 2130838076);
    paramb.putString("title", paramString1);
    paramb.putString("message", paramString2);
    localf.setArguments(paramb);
    return localf;
  }

  public static f a(String paramString1, String paramString2, String paramString3, b paramb)
  {
    f localf = new f();
    localf.a(paramb);
    paramb = new Bundle();
    paramb.putString("pic_url", paramString1);
    paramb.putString("title", paramString2);
    paramb.putString("message", paramString3);
    localf.setArguments(paramb);
    return localf;
  }

  protected final void a(View paramView)
  {
    int i = getArguments().getInt("drawable_id");
    String str1 = getArguments().getString("pic_url");
    String str2 = getArguments().getString("title");
    String str3 = getArguments().getString("message");
    CircleImageView localCircleImageView = (CircleImageView)paramView.findViewById(2131558757);
    TextView localTextView = (TextView)paramView.findViewById(2131558758);
    paramView = (TextView)paramView.findViewById(2131558759);
    localTextView.setText(str2);
    if (TextUtils.isEmpty(str3))
      paramView.setVisibility(8);
    while ((TextUtils.isEmpty(str1)) && (i > 0))
    {
      localCircleImageView.setImageResource(i);
      localCircleImageView.setBorderColor(getResources().getColor(17170445));
      return;
      paramView.setText(str3);
      paramView.setVisibility(0);
    }
    n.a(localCircleImageView, str1);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.a.f
 * JD-Core Version:    0.6.2
 */