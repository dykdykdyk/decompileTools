package com.tencent.open.c;

import android.content.Context;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import com.tencent.open.a.h;

public final class b extends a
{
  public static boolean a;
  private KeyEvent b;
  private com.tencent.open.web.security.b c;

  public b(Context paramContext)
  {
    super(paramContext);
  }

  public final boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    h.b("openSDK_LOG.SecureWebView", "-->dispatchKeyEvent, is device support: " + a);
    if (!a)
      return super.dispatchKeyEvent(paramKeyEvent);
    if (paramKeyEvent.getAction() == 0)
    {
      switch (paramKeyEvent.getKeyCode())
      {
      default:
        if (paramKeyEvent.getUnicodeChar() == 0)
          return super.dispatchKeyEvent(paramKeyEvent);
        break;
      case 67:
        com.tencent.open.web.security.b.b = true;
        return super.dispatchKeyEvent(paramKeyEvent);
      case 4:
        return super.dispatchKeyEvent(paramKeyEvent);
      case 66:
        return super.dispatchKeyEvent(paramKeyEvent);
      }
      if (com.tencent.open.web.security.a.a)
      {
        int i = paramKeyEvent.getUnicodeChar();
        if (((i >= 33) && (i <= 95)) || ((i >= 97) && (i <= 125)))
        {
          this.b = new KeyEvent(0, 17);
          return super.dispatchKeyEvent(this.b);
        }
      }
      return super.dispatchKeyEvent(paramKeyEvent);
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }

  public final InputConnection onCreateInputConnection(EditorInfo paramEditorInfo)
  {
    h.c("openSDK_LOG.SecureWebView", "-->create input connection, is edit: " + com.tencent.open.web.security.a.a);
    InputConnection localInputConnection = super.onCreateInputConnection(paramEditorInfo);
    h.a("openSDK_LOG.SecureWebView", "-->onCreateInputConnection, inputConn is " + localInputConnection);
    if (localInputConnection != null)
    {
      a = true;
      this.c = new com.tencent.open.web.security.b(super.onCreateInputConnection(paramEditorInfo));
      return this.c;
    }
    a = false;
    return localInputConnection;
  }

  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    h.b("openSDK_LOG.SecureWebView", "-->onKeyDown, is device support: " + a);
    if (!a)
      return super.onKeyDown(paramInt, paramKeyEvent);
    if (paramKeyEvent.getAction() == 0)
    {
      switch (paramKeyEvent.getKeyCode())
      {
      default:
        if (paramKeyEvent.getUnicodeChar() == 0)
          return super.onKeyDown(paramInt, paramKeyEvent);
        break;
      case 67:
        com.tencent.open.web.security.b.b = true;
        return super.onKeyDown(paramInt, paramKeyEvent);
      case 4:
        return super.onKeyDown(paramInt, paramKeyEvent);
      case 66:
        return super.onKeyDown(paramInt, paramKeyEvent);
      }
      if (com.tencent.open.web.security.a.a)
      {
        int i = paramKeyEvent.getUnicodeChar();
        if (((i >= 33) && (i <= 95)) || ((i >= 97) && (i <= 125)))
        {
          this.b = new KeyEvent(0, 17);
          return super.onKeyDown(this.b.getKeyCode(), this.b);
        }
      }
      return super.onKeyDown(paramInt, paramKeyEvent);
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.c.b
 * JD-Core Version:    0.6.2
 */