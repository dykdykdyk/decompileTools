.class final enum Lorg/android/agoo/j;
.super Lorg/android/agoo/f;
.source "AgooSettings.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 666
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/android/agoo/f;-><init>(Ljava/lang/String;IIB)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 684
    const/16 v0, 0x50

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    const-string v0, "http://apoll.m.taobao.com"

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    const-string v0, "42.120.111.1"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    const-string v0, "http://api.m.taobao.com/rest/api3.do"

    return-object v0
.end method
