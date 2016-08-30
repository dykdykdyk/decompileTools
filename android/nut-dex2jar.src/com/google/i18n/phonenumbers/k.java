package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

public final class k
  implements Externalizable
{
  private boolean A;
  private boolean B;
  private boolean C;
  private m D = null;
  private boolean E;
  private boolean F;
  private m G = null;
  private boolean H;
  private m I = null;
  private boolean J;
  private m K = null;
  private boolean L;
  private m M = null;
  private boolean N;
  private String O = "";
  private boolean P;
  private boolean Q;
  private boolean R;
  private String S = "";
  private boolean T;
  private String U = "";
  private boolean V;
  private String W = "";
  private boolean X;
  private boolean Y;
  private boolean Z;
  m a = null;
  private List<j> aa = new ArrayList();
  private List<j> ab = new ArrayList();
  private boolean ac;
  private boolean ad = false;
  private boolean ae;
  private boolean af = false;
  private boolean ag;
  private boolean ah = false;
  m b = null;
  m c = null;
  m d = null;
  m e = null;
  m f = null;
  m g = null;
  m h = null;
  m i = null;
  m j = null;
  m k = null;
  public int l = 0;
  String m = "";
  String n = "";
  String o = "";
  boolean p = false;
  boolean q;
  String r = "";
  private boolean s;
  private boolean t;
  private boolean u;
  private boolean v;
  private boolean w;
  private boolean x;
  private boolean y;
  private boolean z;

  public final void readExternal(ObjectInput paramObjectInput)
    throws IOException
  {
    int i2 = 0;
    if (paramObjectInput.readBoolean())
    {
      localObject = new m();
      ((m)localObject).readExternal(paramObjectInput);
      this.s = true;
      this.a = ((m)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new m();
      ((m)localObject).readExternal(paramObjectInput);
      this.t = true;
      this.b = ((m)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new m();
      ((m)localObject).readExternal(paramObjectInput);
      this.u = true;
      this.c = ((m)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new m();
      ((m)localObject).readExternal(paramObjectInput);
      this.v = true;
      this.d = ((m)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new m();
      ((m)localObject).readExternal(paramObjectInput);
      this.w = true;
      this.e = ((m)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new m();
      ((m)localObject).readExternal(paramObjectInput);
      this.x = true;
      this.f = ((m)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new m();
      ((m)localObject).readExternal(paramObjectInput);
      this.y = true;
      this.g = ((m)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new m();
      ((m)localObject).readExternal(paramObjectInput);
      this.z = true;
      this.h = ((m)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new m();
      ((m)localObject).readExternal(paramObjectInput);
      this.A = true;
      this.i = ((m)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new m();
      ((m)localObject).readExternal(paramObjectInput);
      this.B = true;
      this.j = ((m)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new m();
      ((m)localObject).readExternal(paramObjectInput);
      this.C = true;
      this.D = ((m)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new m();
      ((m)localObject).readExternal(paramObjectInput);
      this.E = true;
      this.k = ((m)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new m();
      ((m)localObject).readExternal(paramObjectInput);
      this.F = true;
      this.G = ((m)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new m();
      ((m)localObject).readExternal(paramObjectInput);
      this.H = true;
      this.I = ((m)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new m();
      ((m)localObject).readExternal(paramObjectInput);
      this.J = true;
      this.K = ((m)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = new m();
      ((m)localObject).readExternal(paramObjectInput);
      this.L = true;
      this.M = ((m)localObject);
    }
    Object localObject = paramObjectInput.readUTF();
    this.N = true;
    this.O = ((String)localObject);
    int i1 = paramObjectInput.readInt();
    this.P = true;
    this.l = i1;
    localObject = paramObjectInput.readUTF();
    this.Q = true;
    this.m = ((String)localObject);
    if (paramObjectInput.readBoolean())
    {
      localObject = paramObjectInput.readUTF();
      this.R = true;
      this.S = ((String)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = paramObjectInput.readUTF();
      this.T = true;
      this.U = ((String)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = paramObjectInput.readUTF();
      this.V = true;
      this.W = ((String)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = paramObjectInput.readUTF();
      this.X = true;
      this.n = ((String)localObject);
    }
    if (paramObjectInput.readBoolean())
    {
      localObject = paramObjectInput.readUTF();
      this.Y = true;
      this.o = ((String)localObject);
    }
    boolean bool = paramObjectInput.readBoolean();
    this.Z = true;
    this.p = bool;
    int i3 = paramObjectInput.readInt();
    i1 = 0;
    while (i1 < i3)
    {
      localObject = new j();
      ((j)localObject).readExternal(paramObjectInput);
      this.aa.add(localObject);
      i1 += 1;
    }
    i3 = paramObjectInput.readInt();
    i1 = i2;
    while (i1 < i3)
    {
      localObject = new j();
      ((j)localObject).readExternal(paramObjectInput);
      this.ab.add(localObject);
      i1 += 1;
    }
    bool = paramObjectInput.readBoolean();
    this.ac = true;
    this.ad = bool;
    if (paramObjectInput.readBoolean())
    {
      localObject = paramObjectInput.readUTF();
      this.q = true;
      this.r = ((String)localObject);
    }
    bool = paramObjectInput.readBoolean();
    this.ae = true;
    this.af = bool;
    bool = paramObjectInput.readBoolean();
    this.ag = true;
    this.ah = bool;
  }

  public final void writeExternal(ObjectOutput paramObjectOutput)
    throws IOException
  {
    int i2 = 0;
    paramObjectOutput.writeBoolean(this.s);
    if (this.s)
      this.a.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.t);
    if (this.t)
      this.b.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.u);
    if (this.u)
      this.c.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.v);
    if (this.v)
      this.d.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.w);
    if (this.w)
      this.e.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.x);
    if (this.x)
      this.f.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.y);
    if (this.y)
      this.g.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.z);
    if (this.z)
      this.h.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.A);
    if (this.A)
      this.i.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.B);
    if (this.B)
      this.j.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.C);
    if (this.C)
      this.D.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.E);
    if (this.E)
      this.k.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.F);
    if (this.F)
      this.G.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.H);
    if (this.H)
      this.I.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.J);
    if (this.J)
      this.K.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.L);
    if (this.L)
      this.M.writeExternal(paramObjectOutput);
    paramObjectOutput.writeUTF(this.O);
    paramObjectOutput.writeInt(this.l);
    paramObjectOutput.writeUTF(this.m);
    paramObjectOutput.writeBoolean(this.R);
    if (this.R)
      paramObjectOutput.writeUTF(this.S);
    paramObjectOutput.writeBoolean(this.T);
    if (this.T)
      paramObjectOutput.writeUTF(this.U);
    paramObjectOutput.writeBoolean(this.V);
    if (this.V)
      paramObjectOutput.writeUTF(this.W);
    paramObjectOutput.writeBoolean(this.X);
    if (this.X)
      paramObjectOutput.writeUTF(this.n);
    paramObjectOutput.writeBoolean(this.Y);
    if (this.Y)
      paramObjectOutput.writeUTF(this.o);
    paramObjectOutput.writeBoolean(this.p);
    int i3 = this.aa.size();
    paramObjectOutput.writeInt(i3);
    int i1 = 0;
    while (i1 < i3)
    {
      ((j)this.aa.get(i1)).writeExternal(paramObjectOutput);
      i1 += 1;
    }
    i3 = this.ab.size();
    paramObjectOutput.writeInt(i3);
    i1 = i2;
    while (i1 < i3)
    {
      ((j)this.ab.get(i1)).writeExternal(paramObjectOutput);
      i1 += 1;
    }
    paramObjectOutput.writeBoolean(this.ad);
    paramObjectOutput.writeBoolean(this.q);
    if (this.q)
      paramObjectOutput.writeUTF(this.r);
    paramObjectOutput.writeBoolean(this.af);
    paramObjectOutput.writeBoolean(this.ah);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.k
 * JD-Core Version:    0.6.2
 */