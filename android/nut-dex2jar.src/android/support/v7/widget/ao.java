package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.LayerDrawable;
import android.os.Build.VERSION;
import android.support.v4.f.c;
import android.support.v7.b.b;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class ao
{
  private static final PorterDuff.Mode a = PorterDuff.Mode.SRC_IN;
  private static ao b;
  private static final aq c = new aq();
  private static final int[] d = { android.support.v7.b.f.abc_textfield_search_default_mtrl_alpha, android.support.v7.b.f.abc_textfield_default_mtrl_alpha, android.support.v7.b.f.abc_ab_share_pack_mtrl_alpha };
  private static final int[] e = { android.support.v7.b.f.abc_ic_ab_back_mtrl_am_alpha, android.support.v7.b.f.abc_ic_go_search_api_mtrl_alpha, android.support.v7.b.f.abc_ic_search_api_mtrl_alpha, android.support.v7.b.f.abc_ic_commit_search_api_mtrl_alpha, android.support.v7.b.f.abc_ic_clear_mtrl_alpha, android.support.v7.b.f.abc_ic_menu_share_mtrl_alpha, android.support.v7.b.f.abc_ic_menu_copy_mtrl_am_alpha, android.support.v7.b.f.abc_ic_menu_cut_mtrl_alpha, android.support.v7.b.f.abc_ic_menu_selectall_mtrl_alpha, android.support.v7.b.f.abc_ic_menu_paste_mtrl_am_alpha, android.support.v7.b.f.abc_ic_menu_moreoverflow_mtrl_alpha, android.support.v7.b.f.abc_ic_voice_search_api_mtrl_alpha };
  private static final int[] f = { android.support.v7.b.f.abc_textfield_activated_mtrl_alpha, android.support.v7.b.f.abc_textfield_search_activated_mtrl_alpha, android.support.v7.b.f.abc_cab_background_top_mtrl_alpha, android.support.v7.b.f.abc_text_cursor_material };
  private static final int[] g = { android.support.v7.b.f.abc_popup_background_mtrl_mult, android.support.v7.b.f.abc_cab_background_internal_bg, android.support.v7.b.f.abc_menu_hardkey_panel_mtrl_mult };
  private static final int[] h = { android.support.v7.b.f.abc_edit_text_material, android.support.v7.b.f.abc_tab_indicator_material, android.support.v7.b.f.abc_textfield_search_material, android.support.v7.b.f.abc_spinner_mtrl_am_alpha, android.support.v7.b.f.abc_spinner_textfield_background_material, android.support.v7.b.f.abc_ratingbar_full_material, android.support.v7.b.f.abc_switch_track_mtrl_alpha, android.support.v7.b.f.abc_switch_thumb_material, android.support.v7.b.f.abc_btn_default_mtrl_shape, android.support.v7.b.f.abc_btn_borderless_material };
  private static final int[] i = { android.support.v7.b.f.abc_btn_check_material, android.support.v7.b.f.abc_btn_radio_material };
  private WeakHashMap<Context, SparseArray<ColorStateList>> j;
  private android.support.v4.f.a<String, ar> k;
  private SparseArray<String> l;
  private final Object m = new Object();
  private final WeakHashMap<Context, android.support.v4.f.f<WeakReference<Drawable.ConstantState>>> n = new WeakHashMap(0);
  private TypedValue o;

  private static long a(TypedValue paramTypedValue)
  {
    return paramTypedValue.assetCookie << 32 | paramTypedValue.data;
  }

  private static PorterDuffColorFilter a(int paramInt, PorterDuff.Mode paramMode)
  {
    PorterDuffColorFilter localPorterDuffColorFilter2 = (PorterDuffColorFilter)c.a(Integer.valueOf(aq.a(paramInt, paramMode)));
    PorterDuffColorFilter localPorterDuffColorFilter1 = localPorterDuffColorFilter2;
    if (localPorterDuffColorFilter2 == null)
    {
      localPorterDuffColorFilter1 = new PorterDuffColorFilter(paramInt, paramMode);
      c.a(Integer.valueOf(aq.a(paramInt, paramMode)), localPorterDuffColorFilter1);
    }
    return localPorterDuffColorFilter1;
  }

  private Drawable a(Context paramContext, long paramLong)
  {
    android.support.v4.f.f localf;
    synchronized (this.m)
    {
      localf = (android.support.v4.f.f)this.n.get(paramContext);
      if (localf == null)
        return null;
      Object localObject2 = (WeakReference)localf.a(paramLong);
      if (localObject2 == null)
        break label136;
      localObject2 = (Drawable.ConstantState)((WeakReference)localObject2).get();
      if (localObject2 != null)
      {
        paramContext = ((Drawable.ConstantState)localObject2).newDrawable(paramContext.getResources());
        return paramContext;
      }
    }
    int i1 = c.a(localf.c, localf.e, paramLong);
    if ((i1 >= 0) && (localf.d[i1] != android.support.v4.f.f.a))
    {
      localf.d[i1] = android.support.v4.f.f.a;
      localf.b = true;
    }
    label136: return null;
  }

  public static ao a()
  {
    if (b == null)
    {
      ao localao = new ao();
      b = localao;
      int i1 = Build.VERSION.SDK_INT;
      if (i1 < 23)
      {
        localao.a("vector", new as((byte)0));
        if (i1 >= 11)
          localao.a("animated-vector", new ap((byte)0));
      }
    }
    return b;
  }

  private static void a(Drawable paramDrawable, int paramInt, PorterDuff.Mode paramMode)
  {
    Drawable localDrawable = paramDrawable;
    if (ch.b(paramDrawable))
      localDrawable = paramDrawable.mutate();
    paramDrawable = paramMode;
    if (paramMode == null)
      paramDrawable = a;
    localDrawable.setColorFilter(a(paramInt, paramDrawable));
  }

  public static void a(Drawable paramDrawable, fr paramfr, int[] paramArrayOfInt)
  {
    Object localObject2 = null;
    if ((ch.b(paramDrawable)) && (paramDrawable.mutate() != paramDrawable))
      Log.d("AppCompatDrawableManager", "Mutated drawable is not the same instance as the input.");
    label134: 
    while (true)
    {
      return;
      ColorStateList localColorStateList;
      label67: Object localObject1;
      if ((paramfr.d) || (paramfr.c))
        if (paramfr.d)
        {
          localColorStateList = paramfr.a;
          if (!paramfr.c)
            break label107;
          paramfr = paramfr.b;
          localObject1 = localObject2;
          if (localColorStateList != null)
          {
            if (paramfr != null)
              break label114;
            localObject1 = localObject2;
          }
          label83: paramDrawable.setColorFilter((ColorFilter)localObject1);
        }
      while (true)
      {
        if (Build.VERSION.SDK_INT > 23)
          break label134;
        paramDrawable.invalidateSelf();
        return;
        localColorStateList = null;
        break;
        label107: paramfr = a;
        break label67;
        label114: localObject1 = a(localColorStateList.getColorForState(paramArrayOfInt, 0), paramfr);
        break label83;
        paramDrawable.clearColorFilter();
      }
    }
  }

  private void a(String paramString, ar paramar)
  {
    if (this.k == null)
      this.k = new android.support.v4.f.a();
    this.k.put(paramString, paramar);
  }

  static boolean a(Context paramContext, int paramInt, Drawable paramDrawable)
  {
    PorterDuff.Mode localMode = a;
    int i1;
    int i2;
    if (a(d, paramInt))
    {
      i1 = b.colorControlNormal;
      i2 = 1;
      paramInt = -1;
    }
    while (true)
      if (i2 != 0)
      {
        Drawable localDrawable = paramDrawable;
        if (ch.b(paramDrawable))
          localDrawable = paramDrawable.mutate();
        localDrawable.setColorFilter(a(fp.a(paramContext, i1), localMode));
        if (paramInt != -1)
          localDrawable.setAlpha(paramInt);
        return true;
        if (a(f, paramInt))
        {
          i1 = b.colorControlActivated;
          i2 = 1;
          paramInt = -1;
        }
        else if (a(g, paramInt))
        {
          localMode = PorterDuff.Mode.MULTIPLY;
          i2 = 1;
          i1 = 16842801;
          paramInt = -1;
        }
        else if (paramInt == android.support.v7.b.f.abc_list_divider_mtrl_alpha)
        {
          i1 = 16842800;
          paramInt = Math.round(40.799999F);
          i2 = 1;
        }
      }
      else
      {
        return false;
        paramInt = -1;
        i1 = 0;
        i2 = 0;
      }
  }

  private boolean a(Context paramContext, long paramLong, Drawable paramDrawable)
  {
    Drawable.ConstantState localConstantState = paramDrawable.getConstantState();
    if (localConstantState != null)
      synchronized (this.m)
      {
        android.support.v4.f.f localf = (android.support.v4.f.f)this.n.get(paramContext);
        paramDrawable = localf;
        if (localf == null)
        {
          paramDrawable = new android.support.v4.f.f();
          this.n.put(paramContext, paramDrawable);
        }
        paramDrawable.a(paramLong, new WeakReference(localConstantState));
        return true;
      }
    return false;
  }

  private static boolean a(int[] paramArrayOfInt, int paramInt)
  {
    boolean bool2 = false;
    int i2 = paramArrayOfInt.length;
    int i1 = 0;
    while (true)
    {
      boolean bool1 = bool2;
      if (i1 < i2)
      {
        if (paramArrayOfInt[i1] == paramInt)
          bool1 = true;
      }
      else
        return bool1;
      i1 += 1;
    }
  }

  private static ColorStateList c(Context paramContext, int paramInt)
  {
    int i3 = fp.a(paramContext, b.colorControlHighlight);
    int[] arrayOfInt1 = fp.a;
    int i1 = fp.c(paramContext, b.colorButtonNormal);
    paramContext = fp.d;
    int i2 = android.support.v4.c.a.a(i3, paramInt);
    int[] arrayOfInt2 = fp.b;
    i3 = android.support.v4.c.a.a(i3, paramInt);
    return new ColorStateList(new int[][] { arrayOfInt1, paramContext, arrayOfInt2, fp.h }, new int[] { i1, i2, i3, paramInt });
  }

  final Drawable a(Context paramContext, int paramInt)
  {
    if ((this.k != null) && (!this.k.isEmpty()))
    {
      if (this.l != null)
      {
        localObject1 = (String)this.l.get(paramInt);
        if (("appcompat_skip_skip".equals(localObject1)) || ((localObject1 != null) && (this.k.get(localObject1) == null)))
        {
          localObject1 = null;
          return localObject1;
        }
      }
      else
      {
        this.l = new SparseArray();
      }
      if (this.o == null)
        this.o = new TypedValue();
      TypedValue localTypedValue = this.o;
      Object localObject1 = paramContext.getResources();
      ((Resources)localObject1).getValue(paramInt, localTypedValue, true);
      long l1 = a(localTypedValue);
      Drawable localDrawable = a(paramContext, l1);
      if (localDrawable != null)
        return localDrawable;
      Object localObject2 = localDrawable;
      XmlResourceParser localXmlResourceParser;
      AttributeSet localAttributeSet;
      if (localTypedValue.string != null)
      {
        localObject2 = localDrawable;
        if (localTypedValue.string.toString().endsWith(".xml"))
        {
          localObject2 = localDrawable;
          try
          {
            localXmlResourceParser = ((Resources)localObject1).getXml(paramInt);
            localObject2 = localDrawable;
            localAttributeSet = Xml.asAttributeSet(localXmlResourceParser);
            int i1;
            do
            {
              localObject2 = localDrawable;
              i1 = localXmlResourceParser.next();
            }
            while ((i1 != 2) && (i1 != 1));
            if (i1 != 2)
            {
              localObject2 = localDrawable;
              throw new XmlPullParserException("No start tag found");
            }
          }
          catch (Exception paramContext)
          {
            Log.e("AppCompatDrawableManager", "Exception while inflating drawable", paramContext);
          }
        }
      }
      for (paramContext = (Context)localObject2; ; paramContext = (Context)localObject1)
      {
        localObject1 = paramContext;
        if (paramContext != null)
          break;
        this.l.append(paramInt, "appcompat_skip_skip");
        return paramContext;
        localObject2 = localDrawable;
        localObject1 = localXmlResourceParser.getName();
        localObject2 = localDrawable;
        this.l.append(paramInt, localObject1);
        localObject2 = localDrawable;
        ar localar = (ar)this.k.get(localObject1);
        localObject1 = localDrawable;
        if (localar != null)
        {
          localObject2 = localDrawable;
          localObject1 = localar.a(paramContext, localXmlResourceParser, localAttributeSet, paramContext.getTheme());
        }
        if (localObject1 != null)
        {
          localObject2 = localObject1;
          ((Drawable)localObject1).setChangingConfigurations(localTypedValue.changingConfigurations);
          localObject2 = localObject1;
          a(paramContext, l1, (Drawable)localObject1);
        }
      }
    }
    return null;
  }

  public final Drawable a(Context paramContext, int paramInt, boolean paramBoolean)
  {
    Object localObject2 = a(paramContext, paramInt);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      if (this.o == null)
        this.o = new TypedValue();
      TypedValue localTypedValue = this.o;
      paramContext.getResources().getValue(paramInt, localTypedValue, true);
      long l1 = a(localTypedValue);
      localObject2 = a(paramContext, l1);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        if (paramInt == android.support.v7.b.f.abc_cab_background_top_material)
          localObject2 = new LayerDrawable(new Drawable[] { a(paramContext, android.support.v7.b.f.abc_cab_background_internal_bg, false), a(paramContext, android.support.v7.b.f.abc_cab_background_top_mtrl_alpha, false) });
        localObject1 = localObject2;
        if (localObject2 != null)
        {
          ((Drawable)localObject2).setChangingConfigurations(localTypedValue.changingConfigurations);
          a(paramContext, l1, (Drawable)localObject2);
          localObject1 = localObject2;
        }
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null)
      localObject2 = android.support.v4.b.a.a(paramContext, paramInt);
    localObject1 = localObject2;
    if (localObject2 != null)
      localObject1 = a(paramContext, paramInt, paramBoolean, (Drawable)localObject2);
    if (localObject1 != null)
      ch.a((Drawable)localObject1);
    return localObject1;
  }

  final Drawable a(Context paramContext, int paramInt, boolean paramBoolean, Drawable paramDrawable)
  {
    Object localObject = null;
    ColorStateList localColorStateList = b(paramContext, paramInt);
    if (localColorStateList != null)
    {
      paramContext = paramDrawable;
      if (ch.b(paramDrawable))
        paramContext = paramDrawable.mutate();
      paramDrawable = android.support.v4.c.a.a.f(paramContext);
      android.support.v4.c.a.a.a(paramDrawable, localColorStateList);
      paramContext = (Context)localObject;
      if (paramInt == android.support.v7.b.f.abc_switch_thumb_material)
        paramContext = PorterDuff.Mode.MULTIPLY;
      localObject = paramDrawable;
      if (paramContext != null)
      {
        android.support.v4.c.a.a.a(paramDrawable, paramContext);
        localObject = paramDrawable;
      }
    }
    do
    {
      do
      {
        return localObject;
        if (paramInt == android.support.v7.b.f.abc_seekbar_track_material)
        {
          localObject = (LayerDrawable)paramDrawable;
          a(((LayerDrawable)localObject).findDrawableByLayerId(16908288), fp.a(paramContext, b.colorControlNormal), a);
          a(((LayerDrawable)localObject).findDrawableByLayerId(16908303), fp.a(paramContext, b.colorControlNormal), a);
          a(((LayerDrawable)localObject).findDrawableByLayerId(16908301), fp.a(paramContext, b.colorControlActivated), a);
          return paramDrawable;
        }
        if ((paramInt == android.support.v7.b.f.abc_ratingbar_indicator_material) || (paramInt == android.support.v7.b.f.abc_ratingbar_small_material))
        {
          localObject = (LayerDrawable)paramDrawable;
          a(((LayerDrawable)localObject).findDrawableByLayerId(16908288), fp.c(paramContext, b.colorControlNormal), a);
          a(((LayerDrawable)localObject).findDrawableByLayerId(16908303), fp.a(paramContext, b.colorControlActivated), a);
          a(((LayerDrawable)localObject).findDrawableByLayerId(16908301), fp.a(paramContext, b.colorControlActivated), a);
          return paramDrawable;
        }
        localObject = paramDrawable;
      }
      while (a(paramContext, paramInt, paramDrawable));
      localObject = paramDrawable;
    }
    while (!paramBoolean);
    return null;
  }

  public final ColorStateList b(Context paramContext, int paramInt)
  {
    Object localObject1;
    Object localObject2;
    int i1;
    int i2;
    Object localObject3;
    int i3;
    if (this.j != null)
    {
      localObject1 = (SparseArray)this.j.get(paramContext);
      if (localObject1 != null)
      {
        localObject1 = (ColorStateList)((SparseArray)localObject1).get(paramInt);
        localObject2 = localObject1;
        if (localObject1 == null)
        {
          if (paramInt != android.support.v7.b.f.abc_edit_text_material)
            break label230;
          localObject1 = fp.a;
          i1 = fp.c(paramContext, b.colorControlNormal);
          localObject2 = fp.g;
          i2 = fp.a(paramContext, b.colorControlNormal);
          localObject3 = fp.h;
          i3 = fp.a(paramContext, b.colorControlActivated);
          localObject1 = new ColorStateList(new int[][] { localObject1, localObject2, localObject3 }, new int[] { i1, i2, i3 });
        }
      }
    }
    while (true)
    {
      if (localObject1 != null)
      {
        if (this.j == null)
          this.j = new WeakHashMap();
        localObject3 = (SparseArray)this.j.get(paramContext);
        localObject2 = localObject3;
        if (localObject3 == null)
        {
          localObject2 = new SparseArray();
          this.j.put(paramContext, localObject2);
        }
        ((SparseArray)localObject2).append(paramInt, localObject1);
      }
      localObject2 = localObject1;
      return localObject2;
      localObject1 = null;
      break;
      localObject1 = null;
      break;
      label230: if (paramInt == android.support.v7.b.f.abc_switch_track_mtrl_alpha)
      {
        localObject1 = fp.a;
        i1 = fp.a(paramContext, 16842800, 0.1F);
        localObject2 = fp.e;
        i2 = fp.a(paramContext, b.colorControlActivated, 0.3F);
        localObject3 = fp.h;
        i3 = fp.a(paramContext, 16842800, 0.3F);
        localObject1 = new ColorStateList(new int[][] { localObject1, localObject2, localObject3 }, new int[] { i1, i2, i3 });
      }
      else
      {
        if (paramInt == android.support.v7.b.f.abc_switch_thumb_material)
        {
          localObject1 = new int[3][];
          localObject2 = new int[3];
          localObject3 = fp.b(paramContext, b.colorSwitchThumbNormal);
          if ((localObject3 != null) && (((ColorStateList)localObject3).isStateful()))
          {
            localObject1[0] = fp.a;
            localObject2[0] = ((ColorStateList)localObject3).getColorForState(localObject1[0], 0);
            localObject1[1] = fp.e;
            localObject2[1] = fp.a(paramContext, b.colorControlActivated);
            localObject1[2] = fp.h;
            localObject2[2] = ((ColorStateList)localObject3).getDefaultColor();
          }
          while (true)
          {
            localObject1 = new ColorStateList((int[][])localObject1, (int[])localObject2);
            break;
            localObject1[0] = fp.a;
            localObject2[0] = fp.c(paramContext, b.colorSwitchThumbNormal);
            localObject1[1] = fp.e;
            localObject2[1] = fp.a(paramContext, b.colorControlActivated);
            localObject1[2] = fp.h;
            localObject2[2] = fp.a(paramContext, b.colorSwitchThumbNormal);
          }
        }
        if (paramInt == android.support.v7.b.f.abc_btn_default_mtrl_shape)
        {
          localObject1 = c(paramContext, fp.a(paramContext, b.colorButtonNormal));
        }
        else if (paramInt == android.support.v7.b.f.abc_btn_borderless_material)
        {
          localObject1 = c(paramContext, 0);
        }
        else if (paramInt == android.support.v7.b.f.abc_btn_colored_material)
        {
          localObject1 = c(paramContext, fp.a(paramContext, b.colorAccent));
        }
        else if ((paramInt == android.support.v7.b.f.abc_spinner_mtrl_am_alpha) || (paramInt == android.support.v7.b.f.abc_spinner_textfield_background_material))
        {
          localObject1 = fp.a;
          i1 = fp.c(paramContext, b.colorControlNormal);
          localObject2 = fp.g;
          i2 = fp.a(paramContext, b.colorControlNormal);
          localObject3 = fp.h;
          i3 = fp.a(paramContext, b.colorControlActivated);
          localObject1 = new ColorStateList(new int[][] { localObject1, localObject2, localObject3 }, new int[] { i1, i2, i3 });
        }
        else if (a(e, paramInt))
        {
          localObject1 = fp.b(paramContext, b.colorControlNormal);
        }
        else if (a(h, paramInt))
        {
          i1 = fp.a(paramContext, b.colorControlNormal);
          i2 = fp.a(paramContext, b.colorControlActivated);
          localObject1 = fp.a;
          i3 = fp.c(paramContext, b.colorControlNormal);
          localObject1 = new ColorStateList(new int[][] { localObject1, fp.b, fp.c, fp.d, fp.e, fp.f, fp.h }, new int[] { i3, i2, i2, i2, i2, i2, i1 });
        }
        else if (a(i, paramInt))
        {
          localObject1 = fp.a;
          i1 = fp.c(paramContext, b.colorControlNormal);
          localObject2 = fp.e;
          i2 = fp.a(paramContext, b.colorControlActivated);
          localObject3 = fp.h;
          i3 = fp.a(paramContext, b.colorControlNormal);
          localObject1 = new ColorStateList(new int[][] { localObject1, localObject2, localObject3 }, new int[] { i1, i2, i3 });
        }
        else if (paramInt == android.support.v7.b.f.abc_seekbar_thumb_material)
        {
          localObject1 = fp.a;
          i1 = fp.c(paramContext, b.colorControlActivated);
          localObject2 = fp.h;
          i2 = fp.a(paramContext, b.colorControlActivated);
          localObject1 = new ColorStateList(new int[][] { localObject1, localObject2 }, new int[] { i1, i2 });
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ao
 * JD-Core Version:    0.6.2
 */