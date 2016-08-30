package com.sina.weibo.sdk.d;

import android.util.Log;

public final class i
{
  public static boolean a = false;

  public static void a(String paramString1, String paramString2)
  {
    if (a)
    {
      StackTraceElement localStackTraceElement = java.lang.Thread.currentThread().getStackTrace()[3];
      Log.d(paramString1, new StringBuilder(String.valueOf(localStackTraceElement.getFileName())).append("(").append(localStackTraceElement.getLineNumber()).append(") ").append(localStackTraceElement.getMethodName()).toString() + ": " + paramString2);
    }
  }

  public static void b(String paramString1, String paramString2)
  {
    if (a)
    {
      StackTraceElement localStackTraceElement = java.lang.Thread.currentThread().getStackTrace()[3];
      Log.i(paramString1, new StringBuilder(String.valueOf(localStackTraceElement.getFileName())).append("(").append(localStackTraceElement.getLineNumber()).append(") ").append(localStackTraceElement.getMethodName()).toString() + ": " + paramString2);
    }
  }

  public static void c(String paramString1, String paramString2)
  {
    if (a)
    {
      StackTraceElement localStackTraceElement = java.lang.Thread.currentThread().getStackTrace()[3];
      Log.e(paramString1, new StringBuilder(String.valueOf(localStackTraceElement.getFileName())).append("(").append(localStackTraceElement.getLineNumber()).append(") ").append(localStackTraceElement.getMethodName()).toString() + ": " + paramString2);
    }
  }

  public static void d(String paramString1, String paramString2)
  {
    if (a)
    {
      StackTraceElement localStackTraceElement = java.lang.Thread.currentThread().getStackTrace()[3];
      Log.w(paramString1, new StringBuilder(String.valueOf(localStackTraceElement.getFileName())).append("(").append(localStackTraceElement.getLineNumber()).append(") ").append(localStackTraceElement.getMethodName()).toString() + ": " + paramString2);
    }
  }

  public static void e(String paramString1, String paramString2)
  {
    if (a)
    {
      StackTraceElement localStackTraceElement = java.lang.Thread.currentThread().getStackTrace()[3];
      Log.v(paramString1, new StringBuilder(String.valueOf(localStackTraceElement.getFileName())).append("(").append(localStackTraceElement.getLineNumber()).append(") ").append(localStackTraceElement.getMethodName()).toString() + ": " + paramString2);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.d.i
 * JD-Core Version:    0.6.2
 */