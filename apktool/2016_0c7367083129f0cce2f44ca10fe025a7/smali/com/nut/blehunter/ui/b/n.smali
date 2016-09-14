.class public final Lcom/nut/blehunter/ui/b/n;
.super Ljava/lang/Object;
.source "MapFragmentFactory.java"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/nut/blehunter/ui/b/i;
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    .line 23
    .line 1046
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1047
    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    .line 1049
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v3

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1050
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 1051
    if-eqz v1, :cond_0

    .line 1054
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8

    :cond_1
    :goto_1
    move-object v2, v1

    .line 1058
    goto :goto_0

    .line 1037
    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v10

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v10

    if-eqz v0, :cond_4

    .line 1038
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/nut/blehunter/u;->a(DD)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    .line 23
    :goto_2
    if-eqz v0, :cond_7

    .line 24
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/n;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    new-instance v3, Lcom/nut/blehunter/ui/b/j;

    invoke-direct {v3}, Lcom/nut/blehunter/ui/b/j;-><init>()V

    .line 31
    :goto_3
    return-object v3

    :cond_3
    move v0, v5

    .line 1038
    goto :goto_2

    .line 1040
    :cond_4
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 1041
    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Lcom/nut/blehunter/entity/User;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_2

    :cond_5
    move v0, v5

    goto :goto_2

    .line 27
    :cond_6
    const v0, 0x7f0600bf

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->c(Landroid/content/Context;I)V

    goto :goto_3

    .line 31
    :cond_7
    new-instance v3, Lcom/nut/blehunter/ui/b/a;

    invoke-direct {v3}, Lcom/nut/blehunter/ui/b/a;-><init>()V

    goto :goto_3

    :cond_8
    move-object v1, v2

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.android.gsf"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 68
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 69
    const/4 v0, 0x1

    .line 74
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
