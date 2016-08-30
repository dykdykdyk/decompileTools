package com.tencent.open.a;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public final class b
{
  private static SimpleDateFormat d = new SimpleDateFormat("yy.MM.dd.HH");
  String a = "Tracer.File";
  int b = 4096;
  int c = 10;
  private int e = 2147483647;
  private int f = 2147483647;
  private long g = 10000L;
  private File h;
  private String i = ".log";
  private long j = 9223372036854775807L;

  public b(File paramFile, int paramInt1, int paramInt2, int paramInt3, String paramString1, long paramLong1, String paramString2, long paramLong2)
  {
    this.h = paramFile;
    this.f = paramInt1;
    this.e = paramInt2;
    this.b = paramInt3;
    this.a = paramString1;
    this.g = paramLong1;
    this.c = 10;
    this.i = paramString2;
    this.j = paramLong2;
  }

  final File a(long paramLong)
  {
    File localFile = this.h;
    localFile.mkdirs();
    Object localObject = Calendar.getInstance();
    ((Calendar)localObject).setTimeInMillis(paramLong);
    localObject = new SimpleDateFormat("yy.MM.dd.HH").format(((Calendar)localObject).getTime());
    localObject = "com.tencent.mobileqq_connectSdk." + (String)localObject + ".log";
    try
    {
      localObject = new File(localFile, (String)localObject);
      return localObject;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return localFile;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.a.b
 * JD-Core Version:    0.6.2
 */