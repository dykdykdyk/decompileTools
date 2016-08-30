package com.google.zxing.g.a;

import com.google.zxing.FormatException;

public final class r
{
  private static final int[] d = { 31892, 34236, 39577, 42195, 48118, 51042, 55367, 58893, 63784, 68472, 70749, 76311, 79154, 84390, 87683, 92361, 96236, 102084, 102881, 110507, 110734, 117786, 119615, 126325, 127568, 133589, 136944, 141498, 145311, 150283, 152622, 158308, 161089, 167017 };
  private static final r[] e = b();
  public final int a;
  public final int[] b;
  public final int c;
  private final t[] f;

  private r(int paramInt, int[] paramArrayOfInt, t[] paramArrayOft)
  {
    this.a = paramInt;
    this.b = paramArrayOfInt;
    this.f = paramArrayOft;
    int k = paramArrayOft[0].a;
    paramArrayOfInt = paramArrayOft[0].b;
    int m = paramArrayOfInt.length;
    int i = 0;
    paramInt = j;
    while (paramInt < m)
    {
      paramArrayOft = paramArrayOfInt[paramInt];
      j = paramArrayOft.a;
      i += (paramArrayOft.b + k) * j;
      paramInt += 1;
    }
    this.c = i;
  }

  public static r a(int paramInt)
    throws FormatException
  {
    if (paramInt % 4 != 1)
      throw FormatException.a();
    try
    {
      r localr = b((paramInt - 17) / 4);
      return localr;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    throw FormatException.a();
  }

  public static r b(int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > 40))
      throw new IllegalArgumentException();
    return e[(paramInt - 1)];
  }

  private static r[] b()
  {
    Object localObject1 = new t(7, new s[] { new s(1, 19) });
    Object localObject2 = new t(10, new s[] { new s(1, 16) });
    Object localObject3 = new t(13, new s[] { new s(1, 13) });
    Object localObject4 = new t(17, new s[] { new s(1, 9) });
    localObject1 = new r(1, new int[0], new t[] { localObject1, localObject2, localObject3, localObject4 });
    localObject2 = new t(10, new s[] { new s(1, 34) });
    localObject3 = new t(16, new s[] { new s(1, 28) });
    localObject4 = new t(22, new s[] { new s(1, 22) });
    Object localObject5 = new t(28, new s[] { new s(1, 16) });
    localObject2 = new r(2, new int[] { 6, 18 }, new t[] { localObject2, localObject3, localObject4, localObject5 });
    localObject3 = new t(15, new s[] { new s(1, 55) });
    localObject4 = new t(26, new s[] { new s(1, 44) });
    localObject5 = new t(18, new s[] { new s(2, 17) });
    Object localObject6 = new t(22, new s[] { new s(2, 13) });
    localObject3 = new r(3, new int[] { 6, 22 }, new t[] { localObject3, localObject4, localObject5, localObject6 });
    localObject4 = new t(20, new s[] { new s(1, 80) });
    localObject5 = new t(18, new s[] { new s(2, 32) });
    localObject6 = new t(26, new s[] { new s(2, 24) });
    Object localObject7 = new t(16, new s[] { new s(4, 9) });
    localObject4 = new r(4, new int[] { 6, 26 }, new t[] { localObject4, localObject5, localObject6, localObject7 });
    localObject5 = new t(26, new s[] { new s(1, 108) });
    localObject6 = new t(24, new s[] { new s(2, 43) });
    localObject7 = new t(18, new s[] { new s(2, 15), new s(2, 16) });
    Object localObject8 = new t(22, new s[] { new s(2, 11), new s(2, 12) });
    localObject5 = new r(5, new int[] { 6, 30 }, new t[] { localObject5, localObject6, localObject7, localObject8 });
    localObject6 = new t(18, new s[] { new s(2, 68) });
    localObject7 = new t(16, new s[] { new s(4, 27) });
    localObject8 = new t(24, new s[] { new s(4, 19) });
    Object localObject9 = new t(28, new s[] { new s(4, 15) });
    localObject6 = new r(6, new int[] { 6, 34 }, new t[] { localObject6, localObject7, localObject8, localObject9 });
    localObject7 = new t(20, new s[] { new s(2, 78) });
    localObject8 = new t(18, new s[] { new s(4, 31) });
    localObject9 = new t(18, new s[] { new s(2, 14), new s(4, 15) });
    Object localObject10 = new t(26, new s[] { new s(4, 13), new s(1, 14) });
    localObject7 = new r(7, new int[] { 6, 22, 38 }, new t[] { localObject7, localObject8, localObject9, localObject10 });
    localObject8 = new t(24, new s[] { new s(2, 97) });
    localObject9 = new t(22, new s[] { new s(2, 38), new s(2, 39) });
    localObject10 = new t(22, new s[] { new s(4, 18), new s(2, 19) });
    Object localObject11 = new t(26, new s[] { new s(4, 14), new s(2, 15) });
    localObject8 = new r(8, new int[] { 6, 24, 42 }, new t[] { localObject8, localObject9, localObject10, localObject11 });
    localObject9 = new t(30, new s[] { new s(2, 116) });
    localObject10 = new t(22, new s[] { new s(3, 36), new s(2, 37) });
    localObject11 = new t(20, new s[] { new s(4, 16), new s(4, 17) });
    Object localObject12 = new t(24, new s[] { new s(4, 12), new s(4, 13) });
    localObject9 = new r(9, new int[] { 6, 26, 46 }, new t[] { localObject9, localObject10, localObject11, localObject12 });
    localObject10 = new t(18, new s[] { new s(2, 68), new s(2, 69) });
    localObject11 = new t(26, new s[] { new s(4, 43), new s(1, 44) });
    localObject12 = new t(24, new s[] { new s(6, 19), new s(2, 20) });
    Object localObject13 = new t(28, new s[] { new s(6, 15), new s(2, 16) });
    localObject10 = new r(10, new int[] { 6, 28, 50 }, new t[] { localObject10, localObject11, localObject12, localObject13 });
    localObject11 = new t(20, new s[] { new s(4, 81) });
    localObject12 = new t(30, new s[] { new s(1, 50), new s(4, 51) });
    localObject13 = new t(28, new s[] { new s(4, 22), new s(4, 23) });
    Object localObject14 = new t(24, new s[] { new s(3, 12), new s(8, 13) });
    localObject11 = new r(11, new int[] { 6, 30, 54 }, new t[] { localObject11, localObject12, localObject13, localObject14 });
    localObject12 = new t(24, new s[] { new s(2, 92), new s(2, 93) });
    localObject13 = new t(22, new s[] { new s(6, 36), new s(2, 37) });
    localObject14 = new t(26, new s[] { new s(4, 20), new s(6, 21) });
    Object localObject15 = new t(28, new s[] { new s(7, 14), new s(4, 15) });
    localObject12 = new r(12, new int[] { 6, 32, 58 }, new t[] { localObject12, localObject13, localObject14, localObject15 });
    localObject13 = new t(26, new s[] { new s(4, 107) });
    localObject14 = new t(22, new s[] { new s(8, 37), new s(1, 38) });
    localObject15 = new t(24, new s[] { new s(8, 20), new s(4, 21) });
    Object localObject16 = new t(22, new s[] { new s(12, 11), new s(4, 12) });
    localObject13 = new r(13, new int[] { 6, 34, 62 }, new t[] { localObject13, localObject14, localObject15, localObject16 });
    localObject14 = new t(30, new s[] { new s(3, 115), new s(1, 116) });
    localObject15 = new t(24, new s[] { new s(4, 40), new s(5, 41) });
    localObject16 = new t(20, new s[] { new s(11, 16), new s(5, 17) });
    Object localObject17 = new t(24, new s[] { new s(11, 12), new s(5, 13) });
    localObject14 = new r(14, new int[] { 6, 26, 46, 66 }, new t[] { localObject14, localObject15, localObject16, localObject17 });
    localObject15 = new t(22, new s[] { new s(5, 87), new s(1, 88) });
    localObject16 = new t(24, new s[] { new s(5, 41), new s(5, 42) });
    localObject17 = new t(30, new s[] { new s(5, 24), new s(7, 25) });
    Object localObject18 = new t(24, new s[] { new s(11, 12), new s(7, 13) });
    localObject15 = new r(15, new int[] { 6, 26, 48, 70 }, new t[] { localObject15, localObject16, localObject17, localObject18 });
    localObject16 = new t(24, new s[] { new s(5, 98), new s(1, 99) });
    localObject17 = new t(28, new s[] { new s(7, 45), new s(3, 46) });
    localObject18 = new t(24, new s[] { new s(15, 19), new s(2, 20) });
    Object localObject19 = new t(30, new s[] { new s(3, 15), new s(13, 16) });
    localObject16 = new r(16, new int[] { 6, 26, 50, 74 }, new t[] { localObject16, localObject17, localObject18, localObject19 });
    localObject17 = new t(28, new s[] { new s(1, 107), new s(5, 108) });
    localObject18 = new t(28, new s[] { new s(10, 46), new s(1, 47) });
    localObject19 = new t(28, new s[] { new s(1, 22), new s(15, 23) });
    Object localObject20 = new t(28, new s[] { new s(2, 14), new s(17, 15) });
    localObject17 = new r(17, new int[] { 6, 30, 54, 78 }, new t[] { localObject17, localObject18, localObject19, localObject20 });
    localObject18 = new t(30, new s[] { new s(5, 120), new s(1, 121) });
    localObject19 = new t(26, new s[] { new s(9, 43), new s(4, 44) });
    localObject20 = new t(28, new s[] { new s(17, 22), new s(1, 23) });
    Object localObject21 = new t(28, new s[] { new s(2, 14), new s(19, 15) });
    localObject18 = new r(18, new int[] { 6, 30, 56, 82 }, new t[] { localObject18, localObject19, localObject20, localObject21 });
    localObject19 = new t(28, new s[] { new s(3, 113), new s(4, 114) });
    localObject20 = new t(26, new s[] { new s(3, 44), new s(11, 45) });
    localObject21 = new t(26, new s[] { new s(17, 21), new s(4, 22) });
    Object localObject22 = new t(26, new s[] { new s(9, 13), new s(16, 14) });
    localObject19 = new r(19, new int[] { 6, 30, 58, 86 }, new t[] { localObject19, localObject20, localObject21, localObject22 });
    localObject20 = new t(28, new s[] { new s(3, 107), new s(5, 108) });
    localObject21 = new t(26, new s[] { new s(3, 41), new s(13, 42) });
    localObject22 = new t(30, new s[] { new s(15, 24), new s(5, 25) });
    Object localObject23 = new t(28, new s[] { new s(15, 15), new s(10, 16) });
    localObject20 = new r(20, new int[] { 6, 34, 62, 90 }, new t[] { localObject20, localObject21, localObject22, localObject23 });
    localObject21 = new t(28, new s[] { new s(4, 116), new s(4, 117) });
    localObject22 = new t(26, new s[] { new s(17, 42) });
    localObject23 = new t(28, new s[] { new s(17, 22), new s(6, 23) });
    Object localObject24 = new t(30, new s[] { new s(19, 16), new s(6, 17) });
    localObject21 = new r(21, new int[] { 6, 28, 50, 72, 94 }, new t[] { localObject21, localObject22, localObject23, localObject24 });
    localObject22 = new t(28, new s[] { new s(2, 111), new s(7, 112) });
    localObject23 = new t(28, new s[] { new s(17, 46) });
    localObject24 = new t(30, new s[] { new s(7, 24), new s(16, 25) });
    Object localObject25 = new t(24, new s[] { new s(34, 13) });
    localObject22 = new r(22, new int[] { 6, 26, 50, 74, 98 }, new t[] { localObject22, localObject23, localObject24, localObject25 });
    localObject23 = new t(30, new s[] { new s(4, 121), new s(5, 122) });
    localObject24 = new t(28, new s[] { new s(4, 47), new s(14, 48) });
    localObject25 = new t(30, new s[] { new s(11, 24), new s(14, 25) });
    Object localObject26 = new t(30, new s[] { new s(16, 15), new s(14, 16) });
    localObject23 = new r(23, new int[] { 6, 30, 54, 78, 102 }, new t[] { localObject23, localObject24, localObject25, localObject26 });
    localObject24 = new t(30, new s[] { new s(6, 117), new s(4, 118) });
    localObject25 = new t(28, new s[] { new s(6, 45), new s(14, 46) });
    localObject26 = new t(30, new s[] { new s(11, 24), new s(16, 25) });
    Object localObject27 = new t(30, new s[] { new s(30, 16), new s(2, 17) });
    localObject24 = new r(24, new int[] { 6, 28, 54, 80, 106 }, new t[] { localObject24, localObject25, localObject26, localObject27 });
    localObject25 = new t(26, new s[] { new s(8, 106), new s(4, 107) });
    localObject26 = new t(28, new s[] { new s(8, 47), new s(13, 48) });
    localObject27 = new t(30, new s[] { new s(7, 24), new s(22, 25) });
    Object localObject28 = new t(30, new s[] { new s(22, 15), new s(13, 16) });
    localObject25 = new r(25, new int[] { 6, 32, 58, 84, 110 }, new t[] { localObject25, localObject26, localObject27, localObject28 });
    localObject26 = new t(28, new s[] { new s(10, 114), new s(2, 115) });
    localObject27 = new t(28, new s[] { new s(19, 46), new s(4, 47) });
    localObject28 = new t(28, new s[] { new s(28, 22), new s(6, 23) });
    Object localObject29 = new t(30, new s[] { new s(33, 16), new s(4, 17) });
    localObject26 = new r(26, new int[] { 6, 30, 58, 86, 114 }, new t[] { localObject26, localObject27, localObject28, localObject29 });
    localObject27 = new t(30, new s[] { new s(8, 122), new s(4, 123) });
    localObject28 = new t(28, new s[] { new s(22, 45), new s(3, 46) });
    localObject29 = new t(30, new s[] { new s(8, 23), new s(26, 24) });
    Object localObject30 = new t(30, new s[] { new s(12, 15), new s(28, 16) });
    localObject27 = new r(27, new int[] { 6, 34, 62, 90, 118 }, new t[] { localObject27, localObject28, localObject29, localObject30 });
    localObject28 = new t(30, new s[] { new s(3, 117), new s(10, 118) });
    localObject29 = new t(28, new s[] { new s(3, 45), new s(23, 46) });
    localObject30 = new t(30, new s[] { new s(4, 24), new s(31, 25) });
    Object localObject31 = new t(30, new s[] { new s(11, 15), new s(31, 16) });
    localObject28 = new r(28, new int[] { 6, 26, 50, 74, 98, 122 }, new t[] { localObject28, localObject29, localObject30, localObject31 });
    localObject29 = new t(30, new s[] { new s(7, 116), new s(7, 117) });
    localObject30 = new t(28, new s[] { new s(21, 45), new s(7, 46) });
    localObject31 = new t(30, new s[] { new s(1, 23), new s(37, 24) });
    Object localObject32 = new t(30, new s[] { new s(19, 15), new s(26, 16) });
    localObject29 = new r(29, new int[] { 6, 30, 54, 78, 102, 126 }, new t[] { localObject29, localObject30, localObject31, localObject32 });
    localObject30 = new t(30, new s[] { new s(5, 115), new s(10, 116) });
    localObject31 = new t(28, new s[] { new s(19, 47), new s(10, 48) });
    localObject32 = new t(30, new s[] { new s(15, 24), new s(25, 25) });
    Object localObject33 = new t(30, new s[] { new s(23, 15), new s(25, 16) });
    localObject30 = new r(30, new int[] { 6, 26, 52, 78, 104, 130 }, new t[] { localObject30, localObject31, localObject32, localObject33 });
    localObject31 = new t(30, new s[] { new s(13, 115), new s(3, 116) });
    localObject32 = new t(28, new s[] { new s(2, 46), new s(29, 47) });
    localObject33 = new t(30, new s[] { new s(42, 24), new s(1, 25) });
    Object localObject34 = new t(30, new s[] { new s(23, 15), new s(28, 16) });
    localObject31 = new r(31, new int[] { 6, 30, 56, 82, 108, 134 }, new t[] { localObject31, localObject32, localObject33, localObject34 });
    localObject32 = new t(30, new s[] { new s(17, 115) });
    localObject33 = new t(28, new s[] { new s(10, 46), new s(23, 47) });
    localObject34 = new t(30, new s[] { new s(10, 24), new s(35, 25) });
    Object localObject35 = new t(30, new s[] { new s(19, 15), new s(35, 16) });
    localObject32 = new r(32, new int[] { 6, 34, 60, 86, 112, 138 }, new t[] { localObject32, localObject33, localObject34, localObject35 });
    localObject33 = new t(30, new s[] { new s(17, 115), new s(1, 116) });
    localObject34 = new t(28, new s[] { new s(14, 46), new s(21, 47) });
    localObject35 = new t(30, new s[] { new s(29, 24), new s(19, 25) });
    Object localObject36 = new t(30, new s[] { new s(11, 15), new s(46, 16) });
    localObject33 = new r(33, new int[] { 6, 30, 58, 86, 114, 142 }, new t[] { localObject33, localObject34, localObject35, localObject36 });
    localObject34 = new t(30, new s[] { new s(13, 115), new s(6, 116) });
    localObject35 = new t(28, new s[] { new s(14, 46), new s(23, 47) });
    localObject36 = new t(30, new s[] { new s(44, 24), new s(7, 25) });
    Object localObject37 = new t(30, new s[] { new s(59, 16), new s(1, 17) });
    localObject34 = new r(34, new int[] { 6, 34, 62, 90, 118, 146 }, new t[] { localObject34, localObject35, localObject36, localObject37 });
    localObject35 = new t(30, new s[] { new s(12, 121), new s(7, 122) });
    localObject36 = new t(28, new s[] { new s(12, 47), new s(26, 48) });
    localObject37 = new t(30, new s[] { new s(39, 24), new s(14, 25) });
    Object localObject38 = new t(30, new s[] { new s(22, 15), new s(41, 16) });
    localObject35 = new r(35, new int[] { 6, 30, 54, 78, 102, 126, 150 }, new t[] { localObject35, localObject36, localObject37, localObject38 });
    localObject36 = new t(30, new s[] { new s(6, 121), new s(14, 122) });
    localObject37 = new t(28, new s[] { new s(6, 47), new s(34, 48) });
    localObject38 = new t(30, new s[] { new s(46, 24), new s(10, 25) });
    Object localObject39 = new t(30, new s[] { new s(2, 15), new s(64, 16) });
    localObject36 = new r(36, new int[] { 6, 24, 50, 76, 102, 128, 154 }, new t[] { localObject36, localObject37, localObject38, localObject39 });
    localObject37 = new t(30, new s[] { new s(17, 122), new s(4, 123) });
    localObject38 = new t(28, new s[] { new s(29, 46), new s(14, 47) });
    localObject39 = new t(30, new s[] { new s(49, 24), new s(10, 25) });
    t localt1 = new t(30, new s[] { new s(24, 15), new s(46, 16) });
    localObject37 = new r(37, new int[] { 6, 28, 54, 80, 106, 132, 158 }, new t[] { localObject37, localObject38, localObject39, localt1 });
    localObject38 = new t(30, new s[] { new s(4, 122), new s(18, 123) });
    localObject39 = new t(28, new s[] { new s(13, 46), new s(32, 47) });
    localt1 = new t(30, new s[] { new s(48, 24), new s(14, 25) });
    t localt2 = new t(30, new s[] { new s(42, 15), new s(32, 16) });
    localObject38 = new r(38, new int[] { 6, 32, 58, 84, 110, 136, 162 }, new t[] { localObject38, localObject39, localt1, localt2 });
    localObject39 = new t(30, new s[] { new s(20, 117), new s(4, 118) });
    localt1 = new t(28, new s[] { new s(40, 47), new s(7, 48) });
    localt2 = new t(30, new s[] { new s(43, 24), new s(22, 25) });
    t localt3 = new t(30, new s[] { new s(10, 15), new s(67, 16) });
    localObject39 = new r(39, new int[] { 6, 26, 54, 82, 110, 138, 166 }, new t[] { localObject39, localt1, localt2, localt3 });
    localt1 = new t(30, new s[] { new s(19, 118), new s(6, 119) });
    localt2 = new t(28, new s[] { new s(18, 47), new s(31, 48) });
    localt3 = new t(30, new s[] { new s(34, 24), new s(34, 25) });
    t localt4 = new t(30, new s[] { new s(20, 15), new s(61, 16) });
    return new r[] { localObject1, localObject2, localObject3, localObject4, localObject5, localObject6, localObject7, localObject8, localObject9, localObject10, localObject11, localObject12, localObject13, localObject14, localObject15, localObject16, localObject17, localObject18, localObject19, localObject20, localObject21, localObject22, localObject23, localObject24, localObject25, localObject26, localObject27, localObject28, localObject29, localObject30, localObject31, localObject32, localObject33, localObject34, localObject35, localObject36, localObject37, localObject38, localObject39, new r(40, new int[] { 6, 30, 58, 86, 114, 142, 170 }, new t[] { localt1, localt2, localt3, localt4 }) };
  }

  static r c(int paramInt)
  {
    int i = 0;
    int j = 2147483647;
    int m = 0;
    while (i < d.length)
    {
      int k = d[i];
      if (k == paramInt)
        return b(i + 7);
      int n = o.a(paramInt, k);
      k = j;
      if (n < j)
      {
        m = i + 7;
        k = n;
      }
      i += 1;
      j = k;
    }
    if (j <= 3)
      return b(m);
    return null;
  }

  public final int a()
  {
    return this.a * 4 + 17;
  }

  public final t a(n paramn)
  {
    return this.f[paramn.ordinal()];
  }

  public final String toString()
  {
    return String.valueOf(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.a.r
 * JD-Core Version:    0.6.2
 */