package com.nut.blehunter.ui;

import android.os.AsyncTask;
import com.nut.blehunter.NutTrackerApplication;
import com.nut.blehunter.d.o;
import com.nut.blehunter.entity.Nut;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.List;

final class v extends AsyncTask<Void, Void, int[]>
{
  v(ConnectRecordActivity paramConnectRecordActivity)
  {
  }

  private int[] a()
  {
    int[] arrayOfInt = new int[4];
    int[] tmp7_5 = arrayOfInt;
    tmp7_5[0] = 0;
    int[] tmp11_7 = tmp7_5;
    tmp11_7[1] = 0;
    int[] tmp15_11 = tmp11_7;
    tmp15_11[2] = 0;
    int[] tmp19_15 = tmp15_11;
    tmp19_15[3] = 0;
    tmp19_15;
    Object localObject1 = o.a(Long.parseLong(ConnectRecordActivity.a(this.a).j));
    localObject1 = new File(NutTrackerApplication.a().c + (String)localObject1 + ".txt");
    if (((File)localObject1).exists())
      ((File)localObject1).delete();
    Object localObject2 = new StringBuilder();
    int k = this.a.m.b();
    int j = 0;
    if (j < k)
    {
      Object localObject3 = (byte[])this.a.m.c.get(j);
      int i;
      switch (localObject3[0])
      {
      default:
        i = 2131100188;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      }
      while (true)
      {
        byte[] arrayOfByte = new byte[8];
        System.arraycopy(localObject3, 1, arrayOfByte, 0, 8);
        localObject3 = com.nut.blehunter.d.e.a(o.b(arrayOfByte) / 1000L);
        ((StringBuilder)localObject2).append(this.a.getString(i)).append("        ").append((String)localObject3).append("\r\n");
        j += 1;
        break;
        i = 2131100187;
        arrayOfInt[0] += 1;
        continue;
        i = 2131100184;
        arrayOfInt[1] += 1;
        continue;
        i = 2131100186;
        arrayOfInt[2] += 1;
        continue;
        i = 2131100183;
        arrayOfInt[3] += 1;
        continue;
        i = 2131100181;
      }
    }
    try
    {
      localObject2 = ((StringBuilder)localObject2).toString().getBytes(Charset.forName("UTF-8"));
      localObject1 = new BufferedOutputStream(new FileOutputStream((File)localObject1, false));
      ((BufferedOutputStream)localObject1).write((byte[])localObject2);
      ((BufferedOutputStream)localObject1).close();
      return arrayOfInt;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return arrayOfInt;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.v
 * JD-Core Version:    0.6.2
 */