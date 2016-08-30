package com.nut.blehunter.ui.b.a;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.n;
import com.nut.blehunter.ui.widget.CircleImageView;

public class x extends a
{
  public static x b(Nut paramNut, String paramString, b paramb)
  {
    x localx = new x();
    paramb.a(LayoutInflater.from(paramb.a).inflate(2130903127, null));
    localx.a(paramb);
    paramb = new Bundle();
    paramb.putParcelable("nut", paramNut);
    paramb.putString("message", paramString);
    localx.setArguments(paramb);
    return localx;
  }

  protected final void a(View paramView)
  {
    Nut localNut = (Nut)getArguments().getParcelable("nut");
    String str = getArguments().getString("message");
    CircleImageView localCircleImageView = (CircleImageView)paramView.findViewById(2131558757);
    paramView = (TextView)paramView.findViewById(2131558758);
    paramView.setText(str);
    n.a(localCircleImageView, localNut);
    if (localNut.K == 0)
    {
      paramView.setTextColor(getResources().getColor(2131427350));
      return;
    }
    paramView.setTextColor(getResources().getColor(2131427348));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.a.x
 * JD-Core Version:    0.6.2
 */