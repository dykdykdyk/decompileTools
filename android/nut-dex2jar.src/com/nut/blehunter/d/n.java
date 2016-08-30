package com.nut.blehunter.d;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

public final class n
{
  public static void a(Context paramContext, int paramInt)
  {
    a(paramContext, 0, paramContext.getString(paramInt));
  }

  public static void a(Context paramContext, int paramInt, String paramString)
  {
    View localView = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903191, null);
    ImageView localImageView = (ImageView)localView.findViewById(2131558898);
    TextView localTextView = (TextView)localView.findViewById(2131558899);
    if (paramInt > 0)
      localImageView.setImageResource(paramInt);
    localTextView.setText(paramString);
    paramContext = new Toast(paramContext);
    paramContext.setDuration(0);
    paramContext.setGravity(17, 0, 0);
    paramContext.setView(localView);
    paramContext.show();
  }

  public static void b(Context paramContext, int paramInt)
  {
    a(paramContext, 2130838104, paramContext.getString(paramInt));
  }

  public static void c(Context paramContext, int paramInt)
  {
    a(paramContext, 2130838105, paramContext.getString(paramInt));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.d.n
 * JD-Core Version:    0.6.2
 */