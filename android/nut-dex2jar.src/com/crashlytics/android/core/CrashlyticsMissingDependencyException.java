package com.crashlytics.android.core;

public class CrashlyticsMissingDependencyException extends RuntimeException
{
  CrashlyticsMissingDependencyException(String paramString)
  {
    super("\n" + paramString + "\n");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.CrashlyticsMissingDependencyException
 * JD-Core Version:    0.6.2
 */