.class public final Lcom/nut/blehunter/d/f;
.super Ljava/lang/Object;
.source "GPSUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 23
    :try_start_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 24
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 26
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(DD)[D
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/nut/blehunter/d/f;->b(DD)[D

    move-result-object v1

    .line 48
    aget-wide v2, v1, v4

    add-double/2addr v2, p0

    aput-wide v2, v0, v4

    .line 49
    aget-wide v2, v1, v5

    add-double/2addr v2, p2

    aput-wide v2, v0, v5

    .line 50
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 35
    :try_start_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 36
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 38
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(DD)[D
    .locals 16

    .prologue
    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 92
    const-wide v2, 0x405a400000000000L    # 105.0

    sub-double v2, p2, v2

    const-wide v4, 0x4041800000000000L    # 35.0

    sub-double v4, p0, v4

    .line 1065
    const-wide/high16 v6, -0x3fa7000000000000L    # -100.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v4

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    const-wide v8, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v8, v2

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 1067
    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    mul-double/2addr v10, v2

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v12

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v8

    add-double/2addr v2, v6

    .line 1069
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    div-double v10, v4, v10

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 1070
    const-wide/high16 v6, 0x4064000000000000L    # 160.0

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    div-double v8, v4, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4074000000000000L    # 320.0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v10

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 93
    const-wide v4, 0x405a400000000000L    # 105.0

    sub-double v4, p2, v4

    const-wide v6, 0x4041800000000000L    # 35.0

    sub-double v6, p0, v6

    .line 1076
    const-wide v8, 0x4072c00000000000L    # 300.0

    add-double/2addr v8, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v10, v4

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v10, v4

    mul-double/2addr v6, v10

    add-double/2addr v6, v8

    const-wide v8, 0x3fb999999999999aL    # 0.1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 1077
    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    mul-double/2addr v10, v4

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v4

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 1079
    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double v12, v4, v12

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 1080
    const-wide v8, 0x4062c00000000000L    # 150.0

    const-wide/high16 v10, 0x4028000000000000L    # 12.0

    div-double v10, v4, v10

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide v10, 0x4072c00000000000L    # 300.0

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    div-double/2addr v4, v12

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v8

    add-double/2addr v4, v6

    .line 94
    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v6, p0, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    .line 95
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 96
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v12, 0x3f7b6a8faf80ef0bL    # 0.006693421622965943

    mul-double/2addr v12, v8

    mul-double/2addr v8, v12

    sub-double v8, v10, v8

    .line 97
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 98
    const/4 v1, 0x0

    const-wide v12, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v12

    const-wide v12, 0x41582b102de355c1L    # 6335552.717000426

    mul-double/2addr v8, v10

    div-double v8, v12, v8

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v12

    div-double/2addr v2, v8

    aput-wide v2, v0, v1

    .line 99
    const/4 v1, 0x1

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v4

    const-wide v4, 0x415854c140000000L    # 6378245.0

    div-double/2addr v4, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 100
    return-object v0
.end method
