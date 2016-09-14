.class public final Lcom/nut/blehunter/d/m;
.super Ljava/lang/Object;
.source "RssiUtils.java"


# direct methods
.method public static a(D)I
    .locals 4

    .prologue
    .line 16
    invoke-static {p0, p1}, Lcom/nut/blehunter/d/m;->b(D)D

    move-result-wide v0

    .line 17
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    .line 19
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_1

    .line 20
    const/4 v0, 0x6

    goto :goto_0

    .line 21
    :cond_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_2

    .line 22
    const/4 v0, 0x5

    goto :goto_0

    .line 23
    :cond_2
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_3

    .line 24
    const/4 v0, 0x4

    goto :goto_0

    .line 25
    :cond_3
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_4

    .line 26
    const/4 v0, 0x3

    goto :goto_0

    .line 27
    :cond_4
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_5

    .line 28
    const/4 v0, 0x2

    goto :goto_0

    .line 30
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(D)D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 57
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    .line 58
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 65
    :goto_0
    return-wide v0

    .line 60
    :cond_0
    mul-double v0, p0, v4

    const-wide/high16 v2, -0x3fb2000000000000L    # -60.0

    div-double/2addr v0, v2

    .line 61
    cmpg-double v2, v0, v4

    if-gez v2, :cond_1

    .line 62
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    .line 64
    :cond_1
    const-wide v2, 0x3feccad57bc7f77bL    # 0.89976

    const-wide v4, 0x401ed6872b020c4aL    # 7.7095

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    const-wide v2, 0x3fbc6a7ef9db22d1L    # 0.111

    add-double/2addr v0, v2

    .line 65
    goto :goto_0
.end method
