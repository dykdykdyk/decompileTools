package android.support.v7.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.support.v4.view.bl;
import android.support.v4.view.dd;
import android.support.v7.b.g;
import android.support.v7.view.c;
import android.support.v7.view.e;
import android.support.v7.view.f;
import android.support.v7.view.h;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ViewStubCompat;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.Window.Callback;
import android.widget.PopupWindow;

class z extends w
{
  z(y paramy, Window.Callback paramCallback)
  {
    super(paramy, paramCallback);
  }

  final ActionMode a(ActionMode.Callback paramCallback)
  {
    h localh = new h(this.b.b, paramCallback);
    y localy = this.b;
    if (localy.q != null)
      localy.q.c();
    al localal1 = new al(localy, localh);
    paramCallback = localy.a();
    if (paramCallback != null)
      localy.q = paramCallback.a(localal1);
    label345: boolean bool;
    if (localy.q == null)
    {
      localy.m();
      if (localy.q != null)
        localy.q.c();
      al localal2 = new al(localy, localal1);
      Object localObject;
      if (localy.r == null)
      {
        if (!localy.l)
          break label545;
        localObject = new TypedValue();
        paramCallback = localy.b.getTheme();
        paramCallback.resolveAttribute(android.support.v7.b.b.actionBarTheme, (TypedValue)localObject, true);
        if (((TypedValue)localObject).resourceId == 0)
          break label536;
        Resources.Theme localTheme = localy.b.getResources().newTheme();
        localTheme.setTo(paramCallback);
        localTheme.applyStyle(((TypedValue)localObject).resourceId, true);
        paramCallback = new e(localy.b, 0);
        paramCallback.getTheme().setTo(localTheme);
        localy.r = new ActionBarContextView(paramCallback);
        localy.s = new PopupWindow(paramCallback, null, android.support.v7.b.b.actionModePopupWindowStyle);
        android.support.v4.widget.y.a(localy.s, 2);
        localy.s.setContentView(localy.r);
        localy.s.setWidth(-1);
        paramCallback.getTheme().resolveAttribute(android.support.v7.b.b.actionBarSize, (TypedValue)localObject, true);
        int i = TypedValue.complexToDimensionPixelSize(((TypedValue)localObject).data, paramCallback.getResources().getDisplayMetrics());
        localy.r.setContentHeight(i);
        localy.s.setHeight(-2);
        localy.t = new ah(localy);
      }
      if (localy.r != null)
      {
        localy.m();
        localy.r.b();
        paramCallback = localy.r.getContext();
        localObject = localy.r;
        if (localy.s != null)
          break label591;
        bool = true;
        label392: paramCallback = new f(paramCallback, (ActionBarContextView)localObject, localal2, bool);
        if (!localal1.a(paramCallback, paramCallback.b()))
          break label596;
        paramCallback.d();
        localy.r.a(paramCallback);
        localy.q = paramCallback;
        bl.c(localy.r, 0.0F);
        localy.u = bl.o(localy.r).a(1.0F);
        localy.u.a(new aj(localy));
        if (localy.s != null)
          localy.c.getDecorView().post(localy.t);
      }
    }
    while (true)
    {
      localy.q = localy.q;
      paramCallback = localy.q;
      if (paramCallback == null)
        break label605;
      return localh.b(paramCallback);
      label536: paramCallback = localy.b;
      break;
      label545: paramCallback = (ViewStubCompat)localy.v.findViewById(g.action_mode_bar_stub);
      if (paramCallback == null)
        break label345;
      paramCallback.setLayoutInflater(LayoutInflater.from(localy.l()));
      localy.r = ((ActionBarContextView)paramCallback.a());
      break label345;
      label591: bool = false;
      break label392;
      label596: localy.q = null;
    }
    label605: return null;
  }

  public ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback)
  {
    if (this.b.p)
      return a(paramCallback);
    return super.onWindowStartingActionMode(paramCallback);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.z
 * JD-Core Version:    0.6.2
 */