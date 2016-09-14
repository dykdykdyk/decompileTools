.class public final Lu/aly/cu;
.super Ljava/lang/Object;
.source "EncodingUtils.java"


# direct methods
.method public static final a(BI)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 90
    .line 1098
    shl-int v1, v0, p1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 90
    goto :goto_0
.end method
