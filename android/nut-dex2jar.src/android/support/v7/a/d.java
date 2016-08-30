package android.support.v7.a;

import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.b.b;
import android.support.v7.b.l;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

public final class d
{
  TextView A;
  public TextView B;
  public View C;
  public ListAdapter D;
  public int E = -1;
  int F;
  int G;
  public int H;
  public int I;
  public int J;
  public int K;
  int L = 0;
  Handler M;
  final View.OnClickListener N = new e(this);
  public final Context a;
  final aq b;
  final Window c;
  CharSequence d;
  public CharSequence e;
  public ListView f;
  public View g;
  public int h;
  public int i;
  public int j;
  public int k;
  public int l;
  public boolean m = false;
  Button n;
  CharSequence o;
  Message p;
  Button q;
  CharSequence r;
  Message s;
  Button t;
  CharSequence u;
  Message v;
  NestedScrollView w;
  public int x = 0;
  public Drawable y;
  public ImageView z;

  public d(Context paramContext, aq paramaq, Window paramWindow)
  {
    this.a = paramContext;
    this.b = paramaq;
    this.c = paramWindow;
    this.M = new o(paramaq);
    paramContext = paramContext.obtainStyledAttributes(null, l.AlertDialog, b.alertDialogStyle, 0);
    this.F = paramContext.getResourceId(l.AlertDialog_android_layout, 0);
    this.G = paramContext.getResourceId(l.AlertDialog_buttonPanelSideLayout, 0);
    this.H = paramContext.getResourceId(l.AlertDialog_listLayout, 0);
    this.I = paramContext.getResourceId(l.AlertDialog_multiChoiceItemLayout, 0);
    this.J = paramContext.getResourceId(l.AlertDialog_singleChoiceItemLayout, 0);
    this.K = paramContext.getResourceId(l.AlertDialog_listItemLayout, 0);
    paramContext.recycle();
    paramaq.a().c(1);
  }

  static ViewGroup a(View paramView1, View paramView2)
  {
    if (paramView1 == null)
      if (!(paramView2 instanceof ViewStub))
        break label71;
    label71: for (paramView1 = ((ViewStub)paramView2).inflate(); ; paramView1 = paramView2)
    {
      return (ViewGroup)paramView1;
      if (paramView2 != null)
      {
        ViewParent localViewParent = paramView2.getParent();
        if ((localViewParent instanceof ViewGroup))
          ((ViewGroup)localViewParent).removeView(paramView2);
      }
      if ((paramView1 instanceof ViewStub))
        paramView1 = ((ViewStub)paramView1).inflate();
      while (true)
        return (ViewGroup)paramView1;
    }
  }

  static boolean a(View paramView)
  {
    if (paramView.onCheckIsTextEditor())
      return true;
    if (!(paramView instanceof ViewGroup))
      return false;
    paramView = (ViewGroup)paramView;
    int i1 = paramView.getChildCount();
    while (i1 > 0)
    {
      int i2 = i1 - 1;
      i1 = i2;
      if (a(paramView.getChildAt(i2)))
        return true;
    }
    return false;
  }

  public final void a(int paramInt)
  {
    this.y = null;
    this.x = paramInt;
    if (this.z != null)
    {
      if (paramInt != 0)
      {
        this.z.setVisibility(0);
        this.z.setImageResource(this.x);
      }
    }
    else
      return;
    this.z.setVisibility(8);
  }

  public final void a(int paramInt, CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener, Message paramMessage)
  {
    if (paramOnClickListener != null)
      paramMessage = this.M.obtainMessage(paramInt, paramOnClickListener);
    switch (paramInt)
    {
    default:
      throw new IllegalArgumentException("Button does not exist");
    case -1:
      this.o = paramCharSequence;
      this.p = paramMessage;
      return;
    case -2:
      this.r = paramCharSequence;
      this.s = paramMessage;
      return;
    case -3:
    }
    this.u = paramCharSequence;
    this.v = paramMessage;
  }

  public final void a(CharSequence paramCharSequence)
  {
    this.d = paramCharSequence;
    if (this.A != null)
      this.A.setText(paramCharSequence);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.d
 * JD-Core Version:    0.6.2
 */