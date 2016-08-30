package android.support.v4.view.a;

import android.graphics.Rect;
import android.os.Build.VERSION;

public final class f
{
  public static final j a = new o();
  public final Object b;

  static
  {
    if (Build.VERSION.SDK_INT >= 22)
    {
      a = new h();
      return;
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      a = new g();
      return;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new n();
      return;
    }
    if (Build.VERSION.SDK_INT >= 18)
    {
      a = new m();
      return;
    }
    if (Build.VERSION.SDK_INT >= 17)
    {
      a = new l();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new k();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new i();
      return;
    }
  }

  public f(Object paramObject)
  {
    this.b = paramObject;
  }

  public final void a(int paramInt)
  {
    a.a(this.b, paramInt);
  }

  public final void a(CharSequence paramCharSequence)
  {
    a.a(this.b, paramCharSequence);
  }

  public final void a(Object paramObject)
  {
    a.b(this.b, ((q)paramObject).a);
  }

  public final void a(boolean paramBoolean)
  {
    a.a(this.b, paramBoolean);
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        paramObject = (f)paramObject;
        if (this.b != null)
          break;
      }
      while (paramObject.b == null);
      return false;
    }
    while (this.b.equals(paramObject.b));
    return false;
  }

  public final int hashCode()
  {
    if (this.b == null)
      return 0;
    return this.b.hashCode();
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    Object localObject = new Rect();
    a.a(this.b, (Rect)localObject);
    localStringBuilder.append("; boundsInParent: " + localObject);
    a.b(this.b, (Rect)localObject);
    localStringBuilder.append("; boundsInScreen: " + localObject);
    localStringBuilder.append("; packageName: ").append(a.d(this.b));
    localStringBuilder.append("; className: ").append(a.b(this.b));
    localStringBuilder.append("; text: ").append(a.e(this.b));
    localStringBuilder.append("; contentDescription: ").append(a.c(this.b));
    localStringBuilder.append("; viewId: ").append(a.p(this.b));
    localStringBuilder.append("; checkable: ").append(a.f(this.b));
    localStringBuilder.append("; checked: ").append(a.g(this.b));
    localStringBuilder.append("; focusable: ").append(a.j(this.b));
    localStringBuilder.append("; focused: ").append(a.k(this.b));
    localStringBuilder.append("; selected: ").append(a.o(this.b));
    localStringBuilder.append("; clickable: ").append(a.h(this.b));
    localStringBuilder.append("; longClickable: ").append(a.l(this.b));
    localStringBuilder.append("; enabled: ").append(a.i(this.b));
    localStringBuilder.append("; password: ").append(a.m(this.b));
    localStringBuilder.append("; scrollable: " + a.n(this.b));
    localStringBuilder.append("; [");
    int i = a.a(this.b);
    if (i != 0)
    {
      int j = 1 << Integer.numberOfTrailingZeros(i);
      i = (j ^ 0xFFFFFFFF) & i;
      switch (j)
      {
      default:
        localObject = "ACTION_UNKNOWN";
      case 1:
      case 2:
      case 4:
      case 8:
      case 16:
      case 32:
      case 64:
      case 128:
      case 256:
      case 512:
      case 1024:
      case 2048:
      case 4096:
      case 8192:
      case 65536:
      case 16384:
      case 32768:
      case 131072:
      }
      while (true)
      {
        localStringBuilder.append((String)localObject);
        if (i != 0)
          localStringBuilder.append(", ");
        break;
        localObject = "ACTION_FOCUS";
        continue;
        localObject = "ACTION_CLEAR_FOCUS";
        continue;
        localObject = "ACTION_SELECT";
        continue;
        localObject = "ACTION_CLEAR_SELECTION";
        continue;
        localObject = "ACTION_CLICK";
        continue;
        localObject = "ACTION_LONG_CLICK";
        continue;
        localObject = "ACTION_ACCESSIBILITY_FOCUS";
        continue;
        localObject = "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
        continue;
        localObject = "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
        continue;
        localObject = "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
        continue;
        localObject = "ACTION_NEXT_HTML_ELEMENT";
        continue;
        localObject = "ACTION_PREVIOUS_HTML_ELEMENT";
        continue;
        localObject = "ACTION_SCROLL_FORWARD";
        continue;
        localObject = "ACTION_SCROLL_BACKWARD";
        continue;
        localObject = "ACTION_CUT";
        continue;
        localObject = "ACTION_COPY";
        continue;
        localObject = "ACTION_PASTE";
        continue;
        localObject = "ACTION_SET_SELECTION";
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.a.f
 * JD-Core Version:    0.6.2
 */