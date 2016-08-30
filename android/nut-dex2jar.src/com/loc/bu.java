package com.loc;

import android.text.TextUtils;
import java.util.zip.CRC32;

public final class bu
{
  public String A = null;
  public String B = null;
  public String C = null;
  public String D = null;
  public String E = null;
  public String F = null;
  public byte[] G = null;
  public String a = "1";
  public short b = 0;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public String h = null;
  public String i = null;
  public String j = null;
  public String k = null;
  public String l = null;
  public String m = null;
  public String n = null;
  public String o = null;
  public String p = null;
  public String q = null;
  public String r = null;
  public String s = null;
  public String t = null;
  public String u = null;
  public String v = null;
  public String w = null;
  public String x = null;
  public String y = null;
  public String z = null;

  private String a(String paramString, int paramInt)
  {
    String[] arrayOfString = this.B.split("\\*")[paramInt].split(",");
    if (paramString.equals("lac"))
      return arrayOfString[0];
    if (paramString.equals("cellid"))
      return arrayOfString[1];
    if (paramString.equals("signal"))
      return arrayOfString[2];
    return null;
  }

  private static byte[] a(String paramString)
  {
    Object localObject = paramString.split(":");
    if (localObject != null)
    {
      paramString = (String)localObject;
      if (localObject.length == 6);
    }
    else
    {
      localObject = new String[6];
      i1 = 0;
      while (true)
      {
        paramString = (String)localObject;
        if (i1 >= 6)
          break;
        localObject[i1] = "0";
        i1 += 1;
      }
    }
    localObject = new byte[6];
    int i1 = 0;
    while (i1 < paramString.length)
    {
      if (paramString[i1].length() > 2)
        paramString[i1] = paramString[i1].substring(0, 2);
      localObject[i1] = ((byte)Integer.parseInt(paramString[i1], 16));
      i1 += 1;
    }
    return localObject;
  }

  private String b(String paramString)
  {
    if (!this.A.contains(paramString + ">"))
      return "0";
    int i1 = this.A.indexOf(paramString + ">");
    int i2 = this.A.indexOf("</" + paramString);
    return this.A.substring(i1 + paramString.length() + 1, i2);
  }

  public final byte[] a()
  {
    if (TextUtils.isEmpty(this.a))
      this.a = "";
    if (TextUtils.isEmpty(this.c))
      this.c = "";
    if (TextUtils.isEmpty(this.d))
      this.d = "";
    if (TextUtils.isEmpty(this.e))
      this.e = "";
    if (TextUtils.isEmpty(this.f))
      this.f = "";
    if (TextUtils.isEmpty(this.g))
      this.g = "";
    if (TextUtils.isEmpty(this.h))
      this.h = "";
    if (TextUtils.isEmpty(this.i))
      this.i = "";
    if (TextUtils.isEmpty(this.j))
      this.j = "0";
    while (true)
    {
      label160: int i1;
      label384: label400: byte[] arrayOfByte2;
      int i2;
      if (TextUtils.isEmpty(this.k))
      {
        this.k = "0";
        if (TextUtils.isEmpty(this.l))
          this.l = "";
        if (TextUtils.isEmpty(this.m))
          this.m = "";
        if (TextUtils.isEmpty(this.n))
          this.n = "";
        if (TextUtils.isEmpty(this.o))
          this.o = "";
        if (TextUtils.isEmpty(this.p))
          this.p = "";
        if (TextUtils.isEmpty(this.q))
          this.q = "";
        if (TextUtils.isEmpty(this.r))
          this.r = "";
        if (TextUtils.isEmpty(this.s))
          this.s = "";
        if (TextUtils.isEmpty(this.t))
          this.t = "";
        if (TextUtils.isEmpty(this.u))
          this.u = "";
        if (TextUtils.isEmpty(this.v))
          this.v = "";
        if (TextUtils.isEmpty(this.w))
          this.w = "";
        if (TextUtils.isEmpty(this.x))
          this.x = "";
        if (!TextUtils.isEmpty(this.y))
          break label1943;
        this.y = "0";
        if (!TextUtils.isEmpty(this.z))
          break label1976;
        this.z = "0";
        if (TextUtils.isEmpty(this.A))
          this.A = "";
        if (TextUtils.isEmpty(this.B))
          this.B = "";
        if (TextUtils.isEmpty(this.C))
          this.C = "";
        if (TextUtils.isEmpty(this.D))
          this.D = "";
        if (TextUtils.isEmpty(this.E))
          this.E = "";
        if (TextUtils.isEmpty(this.F))
          this.F = "";
        if (this.G == null)
          this.G = new byte[0];
        i1 = 3072;
        if (this.G != null)
          i1 = this.G.length + 1 + 3072;
        arrayOfByte2 = new byte[i1];
        arrayOfByte2[0] = Byte.parseByte(this.a);
        System.arraycopy(by.b(this.b), 0, arrayOfByte2, 1, 2);
        i2 = 3;
        i1 = i2;
      }
      try
      {
        localObject1 = this.c.getBytes("GBK");
        i1 = i2;
        arrayOfByte2[3] = ((byte)localObject1.length);
        i2 = 4;
        i1 = i2;
        System.arraycopy(localObject1, 0, arrayOfByte2, 4, localObject1.length);
        i1 = i2;
        i2 = localObject1.length;
        i1 = i2 + 4;
        label615: i2 = i1;
      }
      catch (Exception localException13)
      {
        try
        {
          localObject1 = this.d.getBytes("GBK");
          i2 = i1;
          arrayOfByte2[i1] = ((byte)localObject1.length);
          i1 += 1;
          i2 = i1;
          System.arraycopy(localObject1, 0, arrayOfByte2, i1, localObject1.length);
          i2 = i1;
          i3 = localObject1.length;
          i1 += i3;
          label666: i2 = i1;
        }
        catch (Exception localException13)
        {
          try
          {
            localObject1 = this.o.getBytes("GBK");
            i2 = i1;
            arrayOfByte2[i1] = ((byte)localObject1.length);
            i1 += 1;
            i2 = i1;
            System.arraycopy(localObject1, 0, arrayOfByte2, i1, localObject1.length);
            i2 = i1;
            i3 = localObject1.length;
            i1 += i3;
            label717: i2 = i1;
          }
          catch (Exception localException13)
          {
            try
            {
              localObject1 = this.e.getBytes("GBK");
              i2 = i1;
              arrayOfByte2[i1] = ((byte)localObject1.length);
              i1 += 1;
              i2 = i1;
              System.arraycopy(localObject1, 0, arrayOfByte2, i1, localObject1.length);
              i2 = i1;
              i3 = localObject1.length;
              i1 += i3;
              label768: i2 = i1;
            }
            catch (Exception localException13)
            {
              try
              {
                localObject1 = this.f.getBytes("GBK");
                i2 = i1;
                arrayOfByte2[i1] = ((byte)localObject1.length);
                i1 += 1;
                i2 = i1;
                System.arraycopy(localObject1, 0, arrayOfByte2, i1, localObject1.length);
                i2 = i1;
                i3 = localObject1.length;
                i1 += i3;
                label819: i2 = i1;
              }
              catch (Exception localException13)
              {
                try
                {
                  localObject1 = this.g.getBytes("GBK");
                  i2 = i1;
                  arrayOfByte2[i1] = ((byte)localObject1.length);
                  i1 += 1;
                  i2 = i1;
                  System.arraycopy(localObject1, 0, arrayOfByte2, i1, localObject1.length);
                  i2 = i1;
                  i3 = localObject1.length;
                  i1 += i3;
                  label870: i2 = i1;
                }
                catch (Exception localException13)
                {
                  try
                  {
                    localObject1 = this.u.getBytes("GBK");
                    i2 = i1;
                    arrayOfByte2[i1] = ((byte)localObject1.length);
                    i1 += 1;
                    i2 = i1;
                    System.arraycopy(localObject1, 0, arrayOfByte2, i1, localObject1.length);
                    i2 = i1;
                    i3 = localObject1.length;
                    i1 += i3;
                    label921: i2 = i1;
                  }
                  catch (Exception localException13)
                  {
                    try
                    {
                      localObject1 = this.h.getBytes("GBK");
                      i2 = i1;
                      arrayOfByte2[i1] = ((byte)localObject1.length);
                      i1 += 1;
                      i2 = i1;
                      System.arraycopy(localObject1, 0, arrayOfByte2, i1, localObject1.length);
                      i2 = i1;
                      i3 = localObject1.length;
                      i1 += i3;
                      label972: i2 = i1;
                    }
                    catch (Exception localException13)
                    {
                      try
                      {
                        localObject1 = this.p.getBytes("GBK");
                        i2 = i1;
                        arrayOfByte2[i1] = ((byte)localObject1.length);
                        i1 += 1;
                        i2 = i1;
                        System.arraycopy(localObject1, 0, arrayOfByte2, i1, localObject1.length);
                        i2 = i1;
                        i3 = localObject1.length;
                        i1 += i3;
                        label1023: i2 = i1;
                      }
                      catch (Exception localException13)
                      {
                        try
                        {
                          localObject1 = this.q.getBytes("GBK");
                          i2 = i1;
                          arrayOfByte2[i1] = ((byte)localObject1.length);
                          i1 += 1;
                          i2 = i1;
                          System.arraycopy(localObject1, 0, arrayOfByte2, i1, localObject1.length);
                          i2 = i1;
                          i3 = localObject1.length;
                          i1 += i3;
                          label1074: if (TextUtils.isEmpty(this.t))
                          {
                            arrayOfByte2[i1] = 0;
                            i1 += 1;
                            label1093: i2 = i1;
                          }
                        }
                        catch (Exception localException13)
                        {
                          try
                          {
                            localObject1 = this.v.getBytes("GBK");
                            i2 = i1;
                            arrayOfByte2[i1] = ((byte)localObject1.length);
                            i1 += 1;
                            i2 = i1;
                            System.arraycopy(localObject1, 0, arrayOfByte2, i1, localObject1.length);
                            i2 = i1;
                            i3 = localObject1.length;
                            i1 += i3;
                            label1144: i2 = i1;
                          }
                          catch (Exception localException13)
                          {
                            try
                            {
                              localObject1 = this.w.getBytes("GBK");
                              i2 = i1;
                              arrayOfByte2[i1] = ((byte)localObject1.length);
                              i1 += 1;
                              i2 = i1;
                              System.arraycopy(localObject1, 0, arrayOfByte2, i1, localObject1.length);
                              i2 = i1;
                              i3 = localObject1.length;
                              i1 += i3;
                              label1195: i2 = i1;
                            }
                            catch (Exception localException13)
                            {
                              try
                              {
                                localObject1 = this.x.getBytes("GBK");
                                i2 = i1;
                                arrayOfByte2[i1] = ((byte)localObject1.length);
                                i1 += 1;
                                i2 = i1;
                                System.arraycopy(localObject1, 0, arrayOfByte2, i1, localObject1.length);
                                i2 = i1;
                                i3 = localObject1.length;
                                i1 += i3;
                                label1246: arrayOfByte2[i1] = Byte.parseByte(this.y);
                                i1 += 1;
                                arrayOfByte2[i1] = Byte.parseByte(this.j);
                                i2 = i1 + 1;
                                i1 = i2;
                                if (this.j.equals("1"))
                                {
                                  arrayOfByte2[i2] = Byte.parseByte(this.k);
                                  i1 = i2 + 1;
                                }
                                if (!this.j.equals("1"))
                                {
                                  i2 = i1;
                                  if (!this.j.equals("2"));
                                }
                                else
                                {
                                  System.arraycopy(by.c(Integer.parseInt(this.l)), 0, arrayOfByte2, i1, 4);
                                  i2 = i1 + 4;
                                }
                                if (!this.j.equals("1"))
                                {
                                  i1 = i2;
                                  if (!this.j.equals("2"));
                                }
                                else
                                {
                                  System.arraycopy(by.c(Integer.parseInt(this.m)), 0, arrayOfByte2, i2, 4);
                                  i1 = i2 + 4;
                                }
                                if (!this.j.equals("1"))
                                {
                                  i2 = i1;
                                  if (!this.j.equals("2"));
                                }
                                else
                                {
                                  localObject1 = by.d(this.n);
                                  System.arraycopy(localObject1, 0, arrayOfByte2, i1, localObject1.length);
                                  i2 = i1 + localObject1.length;
                                }
                                arrayOfByte2[i2] = Byte.parseByte(this.z);
                                i2 += 1;
                                if (this.z.equals("1"))
                                {
                                  localObject1 = by.d(b("mcc"));
                                  System.arraycopy(localObject1, 0, arrayOfByte2, i2, localObject1.length);
                                  i1 = i2 + localObject1.length;
                                  localObject1 = by.d(b("mnc"));
                                  System.arraycopy(localObject1, 0, arrayOfByte2, i1, localObject1.length);
                                  i1 += localObject1.length;
                                  localObject1 = by.d(b("lac"));
                                  System.arraycopy(localObject1, 0, arrayOfByte2, i1, localObject1.length);
                                  i1 += localObject1.length;
                                  localObject1 = by.e(b("cellid"));
                                  System.arraycopy(localObject1, 0, arrayOfByte2, i1, localObject1.length);
                                  i3 = localObject1.length + i1;
                                  i2 = Integer.parseInt(b("signal"));
                                  i1 = i2;
                                  if (i2 > 127)
                                    i1 = 0;
                                  arrayOfByte2[i3] = ((byte)i1);
                                  i1 = i3 + 1;
                                  if (this.B.length() == 0)
                                  {
                                    arrayOfByte2[i1] = 0;
                                    i1 += 1;
                                    label1646: if (this.C.length() != 0)
                                      break label2594;
                                    arrayOfByte2[i1] = 0;
                                    i1 += 1;
                                    label1665: localObject1 = this.D.split("\\*");
                                    if ((!TextUtils.isEmpty(this.D)) && (localObject1.length != 0))
                                      break label2794;
                                    arrayOfByte2[i1] = 0;
                                    i1 += 1;
                                    label1701: i2 = i1;
                                  }
                                }
                              }
                              catch (Exception localException13)
                              {
                                try
                                {
                                  int i3;
                                  Object localObject3 = this.F.getBytes("GBK");
                                  Object localObject1 = localObject3;
                                  i2 = i1;
                                  if (localObject3.length > 127)
                                    localObject1 = null;
                                  if (localObject1 == null)
                                  {
                                    arrayOfByte2[i1] = 0;
                                    i1 += 1;
                                  }
                                  while (true)
                                  {
                                    label1943: label1976: int i4;
                                    while (true)
                                    {
                                      if (this.G == null)
                                        break label3037;
                                      i2 = this.G.length;
                                      System.arraycopy(by.b(i2), 0, arrayOfByte2, i1, 2);
                                      i3 = i1 + 2;
                                      i1 = i3;
                                      if (i2 > 0)
                                      {
                                        System.arraycopy(this.G, 0, arrayOfByte2, i3, this.G.length);
                                        i1 = i3 + this.G.length;
                                      }
                                      localObject1 = new byte[i1];
                                      System.arraycopy(arrayOfByte2, 0, localObject1, 0, i1);
                                      localObject3 = new CRC32();
                                      ((CRC32)localObject3).update((byte[])localObject1);
                                      localObject3 = by.a(((CRC32)localObject3).getValue());
                                      arrayOfByte2 = new byte[i1 + 8];
                                      System.arraycopy(localObject1, 0, arrayOfByte2, 0, i1);
                                      System.arraycopy(localObject3, 0, arrayOfByte2, i1, 8);
                                      return arrayOfByte2;
                                      if ((this.j.equals("1")) || (this.j.equals("2")))
                                        break;
                                      this.j = "0";
                                      break;
                                      if ((this.k.equals("0")) || (this.k.equals("1")))
                                        break label160;
                                      this.k = "0";
                                      break label160;
                                      if ((this.y.equals("1")) || (this.y.equals("2")))
                                        break label384;
                                      this.y = "0";
                                      break label384;
                                      if ((this.z.equals("1")) || (this.z.equals("2")))
                                        break label400;
                                      this.z = "0";
                                      break label400;
                                      localException1 = localException1;
                                      arrayOfByte2[i1] = 0;
                                      i1 += 1;
                                      break label615;
                                      localException2 = localException2;
                                      arrayOfByte2[i2] = 0;
                                      i1 = i2 + 1;
                                      break label666;
                                      localException3 = localException3;
                                      arrayOfByte2[i2] = 0;
                                      i1 = i2 + 1;
                                      break label717;
                                      localException4 = localException4;
                                      arrayOfByte2[i2] = 0;
                                      i1 = i2 + 1;
                                      break label768;
                                      localException5 = localException5;
                                      arrayOfByte2[i2] = 0;
                                      i1 = i2 + 1;
                                      break label819;
                                      localException6 = localException6;
                                      arrayOfByte2[i2] = 0;
                                      i1 = i2 + 1;
                                      break label870;
                                      localException7 = localException7;
                                      arrayOfByte2[i2] = 0;
                                      i1 = i2 + 1;
                                      break label921;
                                      localException8 = localException8;
                                      arrayOfByte2[i2] = 0;
                                      i1 = i2 + 1;
                                      break label972;
                                      localException9 = localException9;
                                      arrayOfByte2[i2] = 0;
                                      i1 = i2 + 1;
                                      break label1023;
                                      localException10 = localException10;
                                      arrayOfByte2[i2] = 0;
                                      i1 = i2 + 1;
                                      break label1074;
                                      byte[] arrayOfByte1 = a(this.t);
                                      arrayOfByte2[i1] = 6;
                                      i1 += 1;
                                      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, i1, 6);
                                      i1 += 6;
                                      break label1093;
                                      localException11 = localException11;
                                      arrayOfByte2[i2] = 0;
                                      i1 = i2 + 1;
                                      break label1144;
                                      localException12 = localException12;
                                      arrayOfByte2[i2] = 0;
                                      i1 = i2 + 1;
                                      break label1195;
                                      localException13 = localException13;
                                      arrayOfByte2[i2] = 0;
                                      i1 = i2 + 1;
                                      break label1246;
                                      i4 = this.B.split("\\*").length;
                                      arrayOfByte2[i1] = ((byte)i4);
                                      i2 = i1 + 1;
                                      i3 = 0;
                                      while (true)
                                      {
                                        i1 = i2;
                                        if (i3 >= i4)
                                          break;
                                        localObject2 = by.d(a("lac", i3));
                                        System.arraycopy(localObject2, 0, arrayOfByte2, i2, localObject2.length);
                                        i1 = i2 + localObject2.length;
                                        localObject2 = by.e(a("cellid", i3));
                                        System.arraycopy(localObject2, 0, arrayOfByte2, i1, localObject2.length);
                                        int i5 = localObject2.length + i1;
                                        i2 = Integer.parseInt(a("signal", i3));
                                        i1 = i2;
                                        if (i2 > 127)
                                          i1 = 0;
                                        arrayOfByte2[i5] = ((byte)i1);
                                        i3 += 1;
                                        i2 = i5 + 1;
                                      }
                                      i1 = i2;
                                      if (!this.z.equals("2"))
                                        break label1646;
                                      Object localObject2 = by.d(b("mcc"));
                                      System.arraycopy(localObject2, 0, arrayOfByte2, i2, localObject2.length);
                                      i1 = i2 + localObject2.length;
                                      localObject2 = by.d(b("sid"));
                                      System.arraycopy(localObject2, 0, arrayOfByte2, i1, localObject2.length);
                                      i1 += localObject2.length;
                                      localObject2 = by.d(b("nid"));
                                      System.arraycopy(localObject2, 0, arrayOfByte2, i1, localObject2.length);
                                      i1 += localObject2.length;
                                      localObject2 = by.d(b("bid"));
                                      System.arraycopy(localObject2, 0, arrayOfByte2, i1, localObject2.length);
                                      i1 += localObject2.length;
                                      localObject2 = by.e(b("lon"));
                                      System.arraycopy(localObject2, 0, arrayOfByte2, i1, localObject2.length);
                                      i1 += localObject2.length;
                                      localObject2 = by.e(b("lat"));
                                      System.arraycopy(localObject2, 0, arrayOfByte2, i1, localObject2.length);
                                      i3 = localObject2.length + i1;
                                      i2 = Integer.parseInt(b("signal"));
                                      i1 = i2;
                                      if (i2 > 127)
                                        i1 = 0;
                                      arrayOfByte2[i3] = ((byte)i1);
                                      i1 = i3 + 1;
                                      arrayOfByte2[i1] = 0;
                                      i1 += 1;
                                      break label1646;
                                      label2594: arrayOfByte2[i1] = 1;
                                      i1 += 1;
                                      i2 = i1;
                                      try
                                      {
                                        while (true)
                                        {
                                          localObject2 = this.C.split(",");
                                          i2 = i1;
                                          System.arraycopy(a(localObject2[0]), 0, arrayOfByte2, i1, 6);
                                          i2 = i1 + 6;
                                          i1 = i2;
                                          try
                                          {
                                            localObject3 = localObject2[2].getBytes("GBK");
                                            i1 = i2;
                                            arrayOfByte2[i2] = ((byte)localObject3.length);
                                            i2 += 1;
                                            i1 = i2;
                                            System.arraycopy(localObject3, 0, arrayOfByte2, i2, localObject3.length);
                                            i1 = i2;
                                            i3 = localObject3.length;
                                            i1 = i2 + i3;
                                            i2 = i1;
                                            i4 = Integer.parseInt(localObject2[1]);
                                            i3 = i4;
                                            if (i4 > 127)
                                              i3 = 0;
                                            i2 = i1;
                                            arrayOfByte2[i1] = Byte.parseByte(String.valueOf(i3));
                                            i1 += 1;
                                          }
                                          catch (Exception localException16)
                                          {
                                            while (true)
                                            {
                                              arrayOfByte2[i1] = 0;
                                              i1 += 1;
                                            }
                                          }
                                        }
                                      }
                                      catch (Exception localException14)
                                      {
                                        System.arraycopy(a("00:00:00:00:00:00"), 0, arrayOfByte2, i2, 6);
                                        i1 = i2 + 6;
                                        arrayOfByte2[i1] = 0;
                                        i1 += 1;
                                        arrayOfByte2[i1] = Byte.parseByte("0");
                                        i1 += 1;
                                      }
                                    }
                                    break label1665;
                                    label2794: arrayOfByte2[i1] = ((byte)localException14.length);
                                    i2 = i1 + 1;
                                    i1 = 0;
                                    while (true)
                                      if (i1 < localException14.length)
                                      {
                                        String[] arrayOfString = localException14[i1].split(",");
                                        System.arraycopy(a(arrayOfString[0]), 0, arrayOfByte2, i2, 6);
                                        i3 = i2 + 6;
                                        i2 = i3;
                                        try
                                        {
                                          byte[] arrayOfByte3 = arrayOfString[2].getBytes("GBK");
                                          i2 = i3;
                                          arrayOfByte2[i3] = ((byte)arrayOfByte3.length);
                                          i3 += 1;
                                          i2 = i3;
                                          System.arraycopy(arrayOfByte3, 0, arrayOfByte2, i3, arrayOfByte3.length);
                                          i2 = i3;
                                          i4 = arrayOfByte3.length;
                                          i2 = i3 + i4;
                                          i4 = Integer.parseInt(arrayOfString[1]);
                                          i3 = i4;
                                          if (i4 > 127)
                                            i3 = 0;
                                          arrayOfByte2[i2] = Byte.parseByte(String.valueOf(i3));
                                          i2 += 1;
                                          i1 += 1;
                                        }
                                        catch (Exception localException17)
                                        {
                                          while (true)
                                          {
                                            arrayOfByte2[i2] = 0;
                                            i2 += 1;
                                          }
                                        }
                                      }
                                    System.arraycopy(by.b(Integer.parseInt(this.E)), 0, arrayOfByte2, i2, 2);
                                    i1 = i2 + 2;
                                    break label1701;
                                    i2 = i1;
                                    arrayOfByte2[i1] = ((byte)localException14.length);
                                    i1 += 1;
                                    i2 = i1;
                                    System.arraycopy(localException14, 0, arrayOfByte2, i1, localException14.length);
                                    i2 = i1;
                                    i3 = localException14.length;
                                    i1 += i3;
                                  }
                                }
                                catch (Exception localException15)
                                {
                                  while (true)
                                  {
                                    arrayOfByte2[i2] = 0;
                                    i1 = i2 + 1;
                                    continue;
                                    label3037: i2 = 0;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.bu
 * JD-Core Version:    0.6.2
 */