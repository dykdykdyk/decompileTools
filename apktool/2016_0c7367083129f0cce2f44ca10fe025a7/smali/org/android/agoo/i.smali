.class final enum Lorg/android/agoo/i;
.super Lorg/android/agoo/f;
.source "AgooSettings.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 645
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/android/agoo/f;-><init>(Ljava/lang/String;IIB)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 663
    const/16 v0, 0x50

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    const-string v0, "http://apoll.m.taobao.com"

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    const-string v0, "42.120.80.36"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    const-string v0, "http://api.wapa.taobao.com/rest/api3.do"

    return-object v0
.end method
