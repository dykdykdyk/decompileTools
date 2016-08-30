package com.tencent.open.web.security;

import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import com.tencent.open.a.h;

public final class b extends InputConnectionWrapper
{
  public static String a;
  public static boolean b = false;
  public static boolean c = false;

  public b(InputConnection paramInputConnection)
  {
    super(paramInputConnection, false);
  }

  public final boolean commitText(CharSequence paramCharSequence, int paramInt)
  {
    c = true;
    a = paramCharSequence.toString();
    h.a("openSDK_LOG.CaptureInputConnection", "-->commitText: " + paramCharSequence.toString());
    return super.commitText(paramCharSequence, paramInt);
  }

  public final boolean sendKeyEvent(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() == 0)
    {
      h.c("openSDK_LOG.CaptureInputConnection", "sendKeyEvent");
      a = String.valueOf((char)paramKeyEvent.getUnicodeChar());
      c = true;
      h.b("openSDK_LOG.CaptureInputConnection", "s: " + a);
    }
    h.b("openSDK_LOG.CaptureInputConnection", "-->sendKeyEvent: " + a);
    return super.sendKeyEvent(paramKeyEvent);
  }

  public final boolean setComposingText(CharSequence paramCharSequence, int paramInt)
  {
    c = true;
    a = paramCharSequence.toString();
    h.a("openSDK_LOG.CaptureInputConnection", "-->setComposingText: " + paramCharSequence.toString());
    return super.setComposingText(paramCharSequence, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.web.security.b
 * JD-Core Version:    0.6.2
 */