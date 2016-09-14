.class public final Lio/fabric/sdk/android/services/e/aa;
.super Lio/fabric/sdk/android/services/e/a;
.source "UpdateAppSpiCall.java"


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/o;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/l;)V
    .locals 6

    .prologue
    .line 32
    sget v5, Lio/fabric/sdk/android/services/network/d;->c:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/e/a;-><init>(Lio/fabric/sdk/android/o;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/l;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lio/fabric/sdk/android/services/e/d;)Z
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1}, Lio/fabric/sdk/android/services/e/a;->a(Lio/fabric/sdk/android/services/e/d;)Z

    move-result v0

    return v0
.end method
