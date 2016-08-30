package com.nut.blehunter.ui.b.a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.widget.Button;
import com.nut.blehunter.entity.Nut;

public final class g extends x
{
  public static g a(Nut paramNut, String paramString, b paramb)
  {
    g localg = new g();
    paramb.a(LayoutInflater.from(paramb.a).inflate(2130903127, null));
    localg.a(paramb);
    paramb = new Bundle();
    paramb.putParcelable("nut", paramNut);
    paramb.putString("message", paramString);
    localg.setArguments(paramb);
    return localg;
  }

  protected final void a(Button paramButton)
  {
    paramButton.setBackgroundResource(2130837593);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.a.g
 * JD-Core Version:    0.6.2
 */