package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v7.b.g;
import android.support.v7.b.l;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup.LayoutParams;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RadioButton;
import android.widget.TextView;

public class ListMenuItemView extends LinearLayout
  implements aa
{
  private m a;
  private ImageView b;
  private RadioButton c;
  private TextView d;
  private CheckBox e;
  private TextView f;
  private Drawable g;
  private int h;
  private Context i;
  private boolean j;
  private int k;
  private Context l;
  private LayoutInflater m;
  private boolean n;

  public ListMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ListMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    this.l = paramContext;
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, l.MenuView, paramInt, 0);
    this.g = paramAttributeSet.getDrawable(l.MenuView_android_itemBackground);
    this.h = paramAttributeSet.getResourceId(l.MenuView_android_itemTextAppearance, -1);
    this.j = paramAttributeSet.getBoolean(l.MenuView_preserveIconSpacing, false);
    this.i = paramContext;
    paramAttributeSet.recycle();
  }

  private void b()
  {
    this.c = ((RadioButton)getInflater().inflate(android.support.v7.b.i.abc_list_menu_item_radio, this, false));
    addView(this.c);
  }

  private void c()
  {
    this.e = ((CheckBox)getInflater().inflate(android.support.v7.b.i.abc_list_menu_item_checkbox, this, false));
    addView(this.e);
  }

  private LayoutInflater getInflater()
  {
    if (this.m == null)
      this.m = LayoutInflater.from(this.l);
    return this.m;
  }

  private void setShortcut$25d965e(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.a.d()));
    char c1;
    for (int i1 = 0; ; i1 = 8)
    {
      if (i1 == 0)
      {
        TextView localTextView = this.f;
        c1 = this.a.c();
        if (c1 != 0)
          break;
        localObject = "";
        localTextView.setText((CharSequence)localObject);
      }
      if (this.f.getVisibility() != i1)
        this.f.setVisibility(i1);
      return;
    }
    Object localObject = new StringBuilder(m.f);
    switch (c1)
    {
    default:
      ((StringBuilder)localObject).append(c1);
    case '\n':
    case '\b':
    case ' ':
    }
    while (true)
    {
      localObject = ((StringBuilder)localObject).toString();
      break;
      ((StringBuilder)localObject).append(m.g);
      continue;
      ((StringBuilder)localObject).append(m.h);
      continue;
      ((StringBuilder)localObject).append(m.i);
    }
  }

  public final void a(m paramm)
  {
    int i2 = 0;
    this.a = paramm;
    this.k = 0;
    if (paramm.isVisible())
    {
      i1 = 0;
      setVisibility(i1);
      setTitle(paramm.a(this));
      setCheckable(paramm.isCheckable());
      boolean bool = paramm.d();
      paramm.c();
      if ((!bool) || (!this.a.d()))
        break label148;
    }
    char c1;
    label148: for (int i1 = i2; ; i1 = 8)
    {
      if (i1 == 0)
      {
        TextView localTextView = this.f;
        c1 = this.a.c();
        if (c1 != 0)
          break label154;
        localObject = "";
        localTextView.setText((CharSequence)localObject);
      }
      if (this.f.getVisibility() != i1)
        this.f.setVisibility(i1);
      setIcon(paramm.getIcon());
      setEnabled(paramm.isEnabled());
      return;
      i1 = 8;
      break;
    }
    label154: Object localObject = new StringBuilder(m.f);
    switch (c1)
    {
    default:
      ((StringBuilder)localObject).append(c1);
    case '\n':
    case '\b':
    case ' ':
    }
    while (true)
    {
      localObject = ((StringBuilder)localObject).toString();
      break;
      ((StringBuilder)localObject).append(m.g);
      continue;
      ((StringBuilder)localObject).append(m.h);
      continue;
      ((StringBuilder)localObject).append(m.i);
    }
  }

  public final boolean a()
  {
    return false;
  }

  public m getItemData()
  {
    return this.a;
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    setBackgroundDrawable(this.g);
    this.d = ((TextView)findViewById(g.title));
    if (this.h != -1)
      this.d.setTextAppearance(this.i, this.h);
    this.f = ((TextView)findViewById(g.shortcut));
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if ((this.b != null) && (this.j))
    {
      ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
      LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)this.b.getLayoutParams();
      if ((localLayoutParams.height > 0) && (localLayoutParams1.width <= 0))
        localLayoutParams1.width = localLayoutParams.height;
    }
    super.onMeasure(paramInt1, paramInt2);
  }

  public void setCheckable(boolean paramBoolean)
  {
    if ((!paramBoolean) && (this.c == null) && (this.e == null));
    label51: 
    do
    {
      return;
      Object localObject1;
      Object localObject2;
      if (this.a.e())
      {
        if (this.c == null)
          b();
        localObject1 = this.c;
        localObject2 = this.e;
        if (!paramBoolean)
          break label139;
        ((CompoundButton)localObject1).setChecked(this.a.isChecked());
        if (!paramBoolean)
          break label133;
      }
      for (int i1 = 0; ; i1 = 8)
      {
        if (((CompoundButton)localObject1).getVisibility() != i1)
          ((CompoundButton)localObject1).setVisibility(i1);
        if ((localObject2 == null) || (((CompoundButton)localObject2).getVisibility() == 8))
          break;
        ((CompoundButton)localObject2).setVisibility(8);
        return;
        if (this.e == null)
          c();
        localObject1 = this.e;
        localObject2 = this.c;
        break label51;
      }
      if (this.e != null)
        this.e.setVisibility(8);
    }
    while (this.c == null);
    label133: label139: this.c.setVisibility(8);
  }

  public void setChecked(boolean paramBoolean)
  {
    if (this.a.e())
      if (this.c == null)
        b();
    for (Object localObject = this.c; ; localObject = this.e)
    {
      ((CompoundButton)localObject).setChecked(paramBoolean);
      return;
      if (this.e == null)
        c();
    }
  }

  public void setForceShowIcon(boolean paramBoolean)
  {
    this.n = paramBoolean;
    this.j = paramBoolean;
  }

  public void setIcon(Drawable paramDrawable)
  {
    int i1;
    if ((this.a.b.i) || (this.n))
    {
      i1 = 1;
      if ((i1 != 0) || (this.j))
        break label39;
    }
    label39: 
    while ((this.b == null) && (paramDrawable == null) && (!this.j))
    {
      return;
      i1 = 0;
      break;
    }
    if (this.b == null)
    {
      this.b = ((ImageView)getInflater().inflate(android.support.v7.b.i.abc_list_menu_item_icon, this, false));
      addView(this.b, 0);
    }
    if ((paramDrawable != null) || (this.j))
    {
      ImageView localImageView = this.b;
      if (i1 != 0);
      while (true)
      {
        localImageView.setImageDrawable(paramDrawable);
        if (this.b.getVisibility() == 0)
          break;
        this.b.setVisibility(0);
        return;
        paramDrawable = null;
      }
    }
    this.b.setVisibility(8);
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    if (paramCharSequence != null)
    {
      this.d.setText(paramCharSequence);
      if (this.d.getVisibility() != 0)
        this.d.setVisibility(0);
    }
    while (this.d.getVisibility() == 8)
      return;
    this.d.setVisibility(8);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.ListMenuItemView
 * JD-Core Version:    0.6.2
 */