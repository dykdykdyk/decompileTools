package com.nut.blehunter;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import com.nut.blehunter.d.o;
import com.nut.blehunter.entity.Nut;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;
import com.squareup.picasso.Target;

public final class n
{
  public static void a(Context paramContext, Nut paramNut, Target paramTarget)
  {
    if ((paramTarget == null) || (paramNut == null))
      return;
    if (TextUtils.isEmpty(paramNut.i))
    {
      String str = paramNut.e();
      if (!TextUtils.isEmpty(str))
      {
        Picasso.with(paramContext).load(str).into(paramTarget);
        return;
      }
      Picasso.with(paramContext).load(paramNut.d()).into(paramTarget);
      return;
    }
    Picasso.with(paramContext).load(paramNut.i).into(paramTarget);
  }

  public static void a(ImageView paramImageView, Nut paramNut)
  {
    if ((paramImageView == null) || (paramNut == null))
      return;
    if (TextUtils.isEmpty(paramNut.i))
    {
      String str = paramNut.e();
      if ((paramNut.b()) || (paramNut.a()) || (paramNut.c()));
      for (int i = 1; (i == 0) && (!TextUtils.isEmpty(str)); i = 0)
      {
        Picasso.with(paramImageView.getContext()).load(str).placeholder(paramNut.d()).into(paramImageView);
        return;
      }
      paramImageView.setImageResource(paramNut.d());
      return;
    }
    a(paramImageView, paramNut.i, paramNut.d(), 125);
  }

  public static void a(ImageView paramImageView, String paramString)
  {
    a(paramImageView, paramString, 2130838075, 80);
  }

  public static void a(ImageView paramImageView, String paramString, int paramInt1, int paramInt2)
  {
    if ((paramImageView == null) || (paramInt1 == 0))
      return;
    if (TextUtils.isEmpty(paramString))
    {
      paramImageView.setImageResource(paramInt1);
      return;
    }
    String str = paramString;
    if (paramString.indexOf("http") < 0)
      str = "file://" + paramString;
    paramInt2 = o.a(paramImageView.getContext(), paramInt2);
    Picasso.with(paramImageView.getContext()).load(str).placeholder(paramInt1).error(paramInt1).resize(paramInt2, paramInt2).centerCrop().into(paramImageView);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.n
 * JD-Core Version:    0.6.2
 */