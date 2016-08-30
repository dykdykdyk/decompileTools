package com.google.zxing.common;

public final class k
{
  final float a;
  final float b;
  final float c;
  final float d;
  final float e;
  final float f;
  final float g;
  final float h;
  final float i;

  private k(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9)
  {
    this.a = paramFloat1;
    this.b = paramFloat4;
    this.c = paramFloat7;
    this.d = paramFloat2;
    this.e = paramFloat5;
    this.f = paramFloat8;
    this.g = paramFloat3;
    this.h = paramFloat6;
    this.i = paramFloat9;
  }

  private static k a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8)
  {
    float f1 = paramFloat1 - paramFloat3 + paramFloat5 - paramFloat7;
    float f2 = paramFloat2 - paramFloat4 + paramFloat6 - paramFloat8;
    if ((f1 == 0.0F) && (f2 == 0.0F))
      return new k(paramFloat3 - paramFloat1, paramFloat5 - paramFloat3, paramFloat1, paramFloat4 - paramFloat2, paramFloat6 - paramFloat4, paramFloat2, 0.0F, 0.0F, 1.0F);
    float f3 = paramFloat3 - paramFloat5;
    float f4 = paramFloat7 - paramFloat5;
    paramFloat5 = paramFloat4 - paramFloat6;
    float f5 = paramFloat8 - paramFloat6;
    paramFloat6 = f3 * f5 - f4 * paramFloat5;
    f4 = (f5 * f1 - f4 * f2) / paramFloat6;
    paramFloat5 = (f2 * f3 - f1 * paramFloat5) / paramFloat6;
    return new k(paramFloat3 - paramFloat1 + f4 * paramFloat3, paramFloat7 - paramFloat1 + paramFloat5 * paramFloat7, paramFloat1, f4 * paramFloat4 + (paramFloat4 - paramFloat2), paramFloat5 * paramFloat8 + (paramFloat8 - paramFloat2), paramFloat2, f4, paramFloat5, 1.0F);
  }

  public static k a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9, float paramFloat10, float paramFloat11, float paramFloat12, float paramFloat13, float paramFloat14, float paramFloat15, float paramFloat16)
  {
    k localk1 = a(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, paramFloat8);
    paramFloat1 = localk1.e;
    paramFloat2 = localk1.i;
    paramFloat3 = localk1.f;
    paramFloat4 = localk1.h;
    paramFloat5 = localk1.f;
    paramFloat6 = localk1.g;
    paramFloat7 = localk1.d;
    paramFloat8 = localk1.i;
    float f1 = localk1.d;
    float f2 = localk1.h;
    float f3 = localk1.e;
    float f4 = localk1.g;
    float f5 = localk1.c;
    float f6 = localk1.h;
    float f7 = localk1.b;
    float f8 = localk1.i;
    float f9 = localk1.a;
    float f10 = localk1.i;
    float f11 = localk1.c;
    float f12 = localk1.g;
    float f13 = localk1.b;
    float f14 = localk1.g;
    float f15 = localk1.a;
    float f16 = localk1.h;
    float f17 = localk1.b;
    float f18 = localk1.f;
    float f19 = localk1.c;
    float f20 = localk1.e;
    float f21 = localk1.c;
    float f22 = localk1.d;
    float f23 = localk1.a;
    float f24 = localk1.f;
    float f25 = localk1.a;
    float f26 = localk1.e;
    float f27 = localk1.b;
    localk1 = new k(paramFloat1 * paramFloat2 - paramFloat3 * paramFloat4, paramFloat5 * paramFloat6 - paramFloat7 * paramFloat8, f1 * f2 - f3 * f4, f5 * f6 - f7 * f8, f9 * f10 - f11 * f12, f13 * f14 - f15 * f16, f17 * f18 - f19 * f20, f21 * f22 - f23 * f24, f25 * f26 - localk1.d * f27);
    k localk2 = a(paramFloat9, paramFloat10, paramFloat11, paramFloat12, paramFloat13, paramFloat14, paramFloat15, paramFloat16);
    paramFloat1 = localk2.a;
    paramFloat2 = localk1.a;
    paramFloat3 = localk2.d;
    paramFloat4 = localk1.b;
    paramFloat5 = localk2.g;
    paramFloat6 = localk1.c;
    paramFloat7 = localk2.a;
    paramFloat8 = localk1.d;
    paramFloat9 = localk2.d;
    paramFloat10 = localk1.e;
    paramFloat11 = localk2.g;
    paramFloat12 = localk1.f;
    paramFloat13 = localk2.a;
    paramFloat14 = localk1.g;
    paramFloat15 = localk2.d;
    paramFloat16 = localk1.h;
    f1 = localk2.g;
    f2 = localk1.i;
    f3 = localk2.b;
    f4 = localk1.a;
    f5 = localk2.e;
    f6 = localk1.b;
    f7 = localk2.h;
    f8 = localk1.c;
    f9 = localk2.b;
    f10 = localk1.d;
    f11 = localk2.e;
    f12 = localk1.e;
    f13 = localk2.h;
    f14 = localk1.f;
    f15 = localk2.b;
    f16 = localk1.g;
    f17 = localk2.e;
    f18 = localk1.h;
    f19 = localk2.h;
    f20 = localk1.i;
    f21 = localk2.c;
    f22 = localk1.a;
    f23 = localk2.f;
    f24 = localk1.b;
    f25 = localk2.i;
    f26 = localk1.c;
    f27 = localk2.c;
    float f28 = localk1.d;
    float f29 = localk2.f;
    float f30 = localk1.e;
    float f31 = localk2.i;
    float f32 = localk1.f;
    float f33 = localk2.c;
    float f34 = localk1.g;
    float f35 = localk2.f;
    float f36 = localk1.h;
    float f37 = localk2.i;
    return new k(paramFloat1 * paramFloat2 + paramFloat3 * paramFloat4 + paramFloat5 * paramFloat6, paramFloat7 * paramFloat8 + paramFloat9 * paramFloat10 + paramFloat11 * paramFloat12, paramFloat13 * paramFloat14 + paramFloat15 * paramFloat16 + f1 * f2, f3 * f4 + f5 * f6 + f7 * f8, f9 * f10 + f11 * f12 + f13 * f14, f15 * f16 + f17 * f18 + f19 * f20, f21 * f22 + f23 * f24 + f25 * f26, f27 * f28 + f29 * f30 + f31 * f32, f33 * f34 + f35 * f36 + localk1.i * f37);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.k
 * JD-Core Version:    0.6.2
 */