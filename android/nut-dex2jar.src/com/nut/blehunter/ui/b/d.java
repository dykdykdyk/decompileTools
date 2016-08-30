package com.nut.blehunter.ui.b;

import android.app.Fragment;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.b;
import com.nut.blehunter.ui.widget.CircleImageView;
import java.util.ArrayList;

public abstract class d extends Fragment
{
  public static boolean a = false;
  protected static String d = "";
  protected final long b = -1L;
  protected final float c = 25.0F;
  protected final int e = 5;
  protected n f;
  protected o g;
  protected p h;
  protected q i;
  protected m j;
  protected l k;
  protected k l;

  public static View a(Context paramContext, int paramInt, Nut paramNut)
  {
    paramContext = LayoutInflater.from(paramContext).inflate(2130903194, null);
    ((ImageView)paramContext.findViewById(2131558907)).setImageResource(c(paramInt));
    com.nut.blehunter.n.a((CircleImageView)paramContext.findViewById(2131558908), paramNut);
    return paramContext;
  }

  public static int c(int paramInt)
  {
    int m = 2130838093;
    switch (paramInt)
    {
    default:
      m = 0;
    case 1:
    case 6:
      return m;
    case 2:
      return 2130838094;
    case 3:
      return 2130838092;
    case 4:
      return 2130838089;
    case 5:
      return 2130838092;
    case 7:
      return 2130838087;
    case 8:
    }
    return 2130838086;
  }

  protected static boolean d(int paramInt)
  {
    return (paramInt == 1) || (paramInt == 2) || (paramInt == 0);
  }

  public abstract String a();

  public abstract String a(String paramString, b paramb, int paramInt);

  public abstract String a(String paramString, b paramb, int paramInt, Nut paramNut);

  public abstract void a(float paramFloat);

  public abstract void a(int paramInt);

  public abstract void a(b paramb);

  public abstract void a(b paramb, double paramDouble);

  public abstract void a(b paramb, boolean paramBoolean);

  public final void a(k paramk)
  {
    this.l = paramk;
  }

  public final void a(l paraml)
  {
    this.k = paraml;
  }

  public final void a(m paramm)
  {
    this.j = paramm;
  }

  public final void a(n paramn)
  {
    this.f = paramn;
  }

  public final void a(o paramo)
  {
    this.g = paramo;
  }

  public final void a(q paramq)
  {
    this.i = paramq;
  }

  public abstract void a(String paramString);

  public abstract void a(String paramString, int paramInt);

  public abstract void a(String paramString, int paramInt, Nut paramNut);

  public abstract void a(ArrayList<b> paramArrayList);

  public abstract float b(int paramInt);

  public abstract void b(String paramString);

  public abstract void b(String paramString, int paramInt);

  public abstract void c();

  public abstract void d();

  public abstract void e();

  public abstract void e_();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.d
 * JD-Core Version:    0.6.2
 */