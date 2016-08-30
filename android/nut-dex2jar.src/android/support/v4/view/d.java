package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.f;
import android.support.v4.view.a.r;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

abstract interface d
{
  public abstract r a(Object paramObject, View paramView);

  public abstract Object a();

  public abstract Object a(a parama);

  public abstract void a(Object paramObject, View paramView, int paramInt);

  public abstract void a(Object paramObject, View paramView, f paramf);

  public abstract boolean a(Object paramObject, View paramView, int paramInt, Bundle paramBundle);

  public abstract boolean a(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent);

  public abstract boolean a(Object paramObject, ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent);

  public abstract void b(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent);

  public abstract void c(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent);

  public abstract void d(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.d
 * JD-Core Version:    0.6.2
 */