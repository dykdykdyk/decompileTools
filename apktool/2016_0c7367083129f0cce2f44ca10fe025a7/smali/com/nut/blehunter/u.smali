.class public final Lcom/nut/blehunter/u;
.super Ljava/lang/Object;
.source "NutLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static c:Lcom/nut/blehunter/u;


# instance fields
.field protected a:Lcom/nut/blehunter/ui/b/t;

.field b:Landroid/location/LocationListener;

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler;

.field private f:Z

.field private g:Landroid/location/LocationManager;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nut/blehunter/entity/FindLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/u;->g:Landroid/location/LocationManager;

    .line 56
    new-instance v0, Lcom/nut/blehunter/v;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/v;-><init>(Lcom/nut/blehunter/u;)V

    iput-object v0, p0, Lcom/nut/blehunter/u;->b:Landroid/location/LocationListener;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/u;->i:Ljava/util/Map;

    .line 100
    iput-object p1, p0, Lcom/nut/blehunter/u;->d:Landroid/content/Context;

    .line 101
    iget-object v0, p0, Lcom/nut/blehunter/u;->d:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nut/blehunter/u;->g:Landroid/location/LocationManager;

    .line 102
    return-void
.end method

.method public static a()Lcom/nut/blehunter/u;
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lcom/nut/blehunter/u;->c:Lcom/nut/blehunter/u;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/nut/blehunter/u;

    invoke-static {}, Lcom/nut/blehunter/NutTrackerApplication;->a()Lcom/nut/blehunter/NutTrackerApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/NutTrackerApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nut/blehunter/u;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nut/blehunter/u;->c:Lcom/nut/blehunter/u;

    .line 108
    :cond_0
    sget-object v0, Lcom/nut/blehunter/u;->c:Lcom/nut/blehunter/u;

    return-object v0
.end method

.method static synthetic a(Lcom/nut/blehunter/u;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nut/blehunter/u;->h:Ljava/lang/String;

    return-object v0
.end method

.method private a(DDF)V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const-wide/16 v6, 0x0

    .line 239
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    .line 240
    cmpl-double v2, p1, v6

    if-nez v2, :cond_1

    cmpl-double v2, p3, v6

    if-nez v2, :cond_1

    .line 241
    invoke-direct {p0}, Lcom/nut/blehunter/u;->g()Landroid/location/Location;

    move-result-object v2

    .line 242
    if-nez v2, :cond_0

    .line 260
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide p1

    .line 246
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide p3

    .line 247
    cmpl-double v2, p1, v6

    if-nez v2, :cond_1

    cmpl-double v2, p3, v6

    if-nez v2, :cond_1

    .line 248
    const-string v2, "\u83b7\u53d6\u7ecf\u7eac\u5ea6\u4fe1\u606f\u5931\u8d25"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-wide/from16 v8, p3

    move-wide v6, p1

    .line 252
    const-string v2, "processLocation:<%f, %f> accuracy:%f"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v3, v11

    const/4 v10, 0x1

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x2

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v3, v10

    invoke-static {v2, v3}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    new-instance v3, Lcom/nut/blehunter/entity/Position;

    invoke-direct/range {v3 .. v9}, Lcom/nut/blehunter/entity/Position;-><init>(JDD)V

    .line 254
    move/from16 v0, p5

    iput v0, v3, Lcom/nut/blehunter/entity/Position;->h:F

    .line 255
    iget-object v2, p0, Lcom/nut/blehunter/u;->a:Lcom/nut/blehunter/ui/b/t;

    if-eqz v2, :cond_2

    .line 256
    iget-object v2, p0, Lcom/nut/blehunter/u;->a:Lcom/nut/blehunter/ui/b/t;

    new-instance v4, Lcom/nut/blehunter/entity/CustomLatLng;

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DD)V

    invoke-interface {v2, v4}, Lcom/nut/blehunter/ui/b/t;->a(Lcom/nut/blehunter/entity/CustomLatLng;)V

    .line 259
    :cond_2
    iget-object v2, p0, Lcom/nut/blehunter/u;->d:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/nut/blehunter/entity/Position;->a()Ljava/lang/String;

    move-result-object v3

    .line 2062
    const-string v4, "save_latest_location"

    invoke-static {v2, v4, v3}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nut/blehunter/u;DDF)V
    .locals 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/nut/blehunter/u;->a(DDF)V

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/u;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 40
    .line 2334
    iget-object v0, p0, Lcom/nut/blehunter/u;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/FindLocation;

    .line 2335
    if-eqz v0, :cond_0

    .line 2336
    const-string v1, "uuid=%s tagId=%s address=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/nut/blehunter/entity/FindLocation;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2337
    iput-object p2, v0, Lcom/nut/blehunter/entity/FindLocation;->c:Ljava/lang/String;

    .line 2338
    invoke-static {}, Lcom/nut/blehunter/provider/k;->b()Lcom/nut/blehunter/provider/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/provider/k;->a(Lcom/nut/blehunter/entity/FindLocation;)V

    .line 2339
    iget-object v0, p0, Lcom/nut/blehunter/u;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3320
    iget-object v0, p0, Lcom/nut/blehunter/u;->i:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/u;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3321
    :cond_0
    :goto_0
    return-void

    .line 3323
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/u;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3324
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3325
    iget-object v0, p0, Lcom/nut/blehunter/u;->i:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/FindLocation;

    .line 3326
    iget-object v2, v0, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    iget-wide v2, v2, Lcom/nut/blehunter/entity/Position;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 3327
    iget-object v0, v0, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    iget-wide v4, v0, Lcom/nut/blehunter/entity/Position;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 3328
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nut/blehunter/u;->a(Ljava/lang/String;DD)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/nut/blehunter/u;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/nut/blehunter/d/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const-string v1, "network"

    .line 208
    :goto_0
    const-string v0, "requestLocationUpdateGoogle provider=%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v0, v2}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/u;->g:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/nut/blehunter/u;->d:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nut/blehunter/u;->g:Landroid/location/LocationManager;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/u;->g:Landroid/location/LocationManager;

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nut/blehunter/u;->b:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 214
    iput-object v1, p0, Lcom/nut/blehunter/u;->h:Ljava/lang/String;

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/u;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/u;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/nut/blehunter/d/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    const-string v1, "gps"

    goto :goto_0

    .line 204
    :cond_2
    const-string v0, "GPS\u6216\u7f51\u7edc\u4e3a\u5f00\u542f\uff0c\u8bf7\u6c42\u5b9a\u4f4d\u5931\u8d25"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 217
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    move-object v1, p1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;DD)V
    .locals 8

    .prologue
    .line 345
    new-instance v0, Lcom/nut/blehunter/b/b;

    iget-object v1, p0, Lcom/nut/blehunter/u;->d:Landroid/content/Context;

    new-instance v6, Lcom/nut/blehunter/w;

    invoke-direct {v6, p0, p1}, Lcom/nut/blehunter/w;-><init>(Lcom/nut/blehunter/u;Ljava/lang/String;)V

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/nut/blehunter/b/b;-><init>(Landroid/content/Context;DDLcom/nut/blehunter/b/e;)V

    .line 353
    return-void
.end method

.method static synthetic b(Lcom/nut/blehunter/u;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nut/blehunter/u;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/nut/blehunter/u;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/nut/blehunter/u;->f()V

    return-void
.end method

.method private f()V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 184
    iget-object v0, p0, Lcom/nut/blehunter/u;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/nut/blehunter/d/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/nut/blehunter/u;->b()Lcom/nut/blehunter/entity/Position;

    move-result-object v1

    .line 186
    if-nez v1, :cond_0

    .line 187
    new-instance v1, Lcom/nut/blehunter/entity/Position;

    const-wide/16 v2, 0x0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/nut/blehunter/entity/Position;-><init>(JDD)V

    .line 189
    :cond_0
    iget-wide v2, v1, Lcom/nut/blehunter/entity/Position;->d:D

    iget-wide v4, v1, Lcom/nut/blehunter/entity/Position;->c:D

    iget v6, v1, Lcom/nut/blehunter/entity/Position;->h:F

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nut/blehunter/u;->a(DDF)V

    .line 190
    invoke-virtual {p0}, Lcom/nut/blehunter/u;->e()V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_1
    const-string v0, "gps"

    invoke-direct {p0, v0}, Lcom/nut/blehunter/u;->a(Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/nut/blehunter/u;->h()V

    goto :goto_0
.end method

.method private g()Landroid/location/Location;
    .locals 5

    .prologue
    .line 222
    iget-object v0, p0, Lcom/nut/blehunter/u;->d:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nut/blehunter/u;->g:Landroid/location/LocationManager;

    .line 223
    iget-object v0, p0, Lcom/nut/blehunter/u;->g:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 224
    const/4 v1, 0x0

    .line 225
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    iget-object v3, p0, Lcom/nut/blehunter/u;->g:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    .line 230
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    :cond_1
    :goto_1
    move-object v1, v0

    .line 234
    goto :goto_0

    .line 235
    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private h()V
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/nut/blehunter/u;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/u;->e:Landroid/os/Handler;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/u;->e:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/entity/FindLocation;)V
    .locals 6

    .prologue
    .line 308
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/u;->i:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 309
    :cond_0
    const-string v0, "params is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/u;->i:Ljava/util/Map;

    iget-object v1, p1, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Position;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-static {}, Lcom/nut/blehunter/provider/k;->b()Lcom/nut/blehunter/provider/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nut/blehunter/provider/k;->a(Lcom/nut/blehunter/entity/FindLocation;)V

    .line 314
    iget-object v0, p1, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    iget-wide v0, v0, Lcom/nut/blehunter/entity/Position;->d:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 315
    iget-object v1, p1, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    iget-wide v2, v1, Lcom/nut/blehunter/entity/Position;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 316
    iget-object v1, p1, Lcom/nut/blehunter/entity/FindLocation;->b:Lcom/nut/blehunter/entity/Position;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Position;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nut/blehunter/u;->a(Ljava/lang/String;DD)V

    goto :goto_0
.end method

.method public final a(Lcom/nut/blehunter/ui/b/t;)V
    .locals 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/nut/blehunter/u;->a:Lcom/nut/blehunter/ui/b/t;

    .line 1175
    iget-boolean v0, p0, Lcom/nut/blehunter/u;->f:Z

    if-nez v0, :cond_0

    .line 1178
    const-string v0, "requestLocation start"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1179
    const-string v0, "network"

    invoke-direct {p0, v0}, Lcom/nut/blehunter/u;->a(Ljava/lang/String;)V

    .line 1180
    invoke-direct {p0}, Lcom/nut/blehunter/u;->h()V

    .line 172
    :cond_0
    return-void
.end method

.method public final a(DD)Z
    .locals 3

    .prologue
    .line 162
    const-wide v0, 0x4052004189374bc7L    # 72.004

    cmpl-double v0, p3, v0

    if-lez v0, :cond_0

    const-wide v0, 0x40613ab5dcc63f14L    # 137.8347

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    const-wide v0, 0x3fea89a027525461L    # 0.8293

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    const-wide v0, 0x404be9de69ad42c4L    # 55.8271

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/nut/blehunter/u;->d:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/bingerz/android/pathcontainspoint/a;->a(Landroid/content/Context;DD)Z

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/nut/blehunter/entity/Position;
    .locals 8

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nut/blehunter/u;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;)Lcom/nut/blehunter/entity/Position;

    move-result-object v1

    .line 117
    if-nez v1, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/nut/blehunter/u;->g()Landroid/location/Location;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lcom/nut/blehunter/d/c;->a()J

    move-result-wide v2

    .line 121
    new-instance v1, Lcom/nut/blehunter/entity/Position;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/nut/blehunter/entity/Position;-><init>(JDD)V

    .line 124
    :cond_0
    return-object v1
.end method

.method public final c()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/nut/blehunter/u;->b()Lcom/nut/blehunter/entity/Position;

    move-result-object v1

    .line 129
    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 132
    :cond_1
    invoke-static {}, Lcom/nut/blehunter/d/c;->a()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/nut/blehunter/entity/Position;->e:J

    sub-long/2addr v2, v4

    .line 133
    const-wide/16 v4, 0x78

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/nut/blehunter/u;->a:Lcom/nut/blehunter/ui/b/t;

    if-eqz v2, :cond_0

    .line 134
    iget-object v0, p0, Lcom/nut/blehunter/u;->a:Lcom/nut/blehunter/ui/b/t;

    new-instance v2, Lcom/nut/blehunter/entity/CustomLatLng;

    iget-wide v4, v1, Lcom/nut/blehunter/entity/Position;->d:D

    iget-wide v6, v1, Lcom/nut/blehunter/entity/Position;->c:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DD)V

    invoke-interface {v0, v2}, Lcom/nut/blehunter/ui/b/t;->a(Lcom/nut/blehunter/entity/CustomLatLng;)V

    .line 135
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/nut/blehunter/u;->b()Lcom/nut/blehunter/entity/Position;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_1

    .line 144
    iget-wide v6, v2, Lcom/nut/blehunter/entity/Position;->d:D

    .line 145
    iget-wide v2, v2, Lcom/nut/blehunter/entity/Position;->c:D

    .line 153
    :goto_0
    cmpl-double v8, v6, v4

    if-nez v8, :cond_3

    cmpl-double v4, v2, v4

    if-nez v4, :cond_3

    .line 154
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v2

    .line 155
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/nut/blehunter/u;->d:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/entity/User;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    :cond_0
    :goto_1
    return v0

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/nut/blehunter/u;->g()Landroid/location/Location;

    move-result-object v2

    .line 148
    if-eqz v2, :cond_4

    .line 149
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 150
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 155
    goto :goto_1

    .line 157
    :cond_3
    invoke-virtual {p0, v6, v7, v2, v3}, Lcom/nut/blehunter/u;->a(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_4
    move-wide v2, v4

    move-wide v6, v4

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/u;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/u;->g:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/u;->b:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/nut/blehunter/u;->g:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nut/blehunter/u;->b:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/u;->g:Landroid/location/LocationManager;

    .line 295
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/u;->f:Z

    .line 296
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final run()V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 271
    iget-object v0, p0, Lcom/nut/blehunter/u;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/u;->h:Ljava/lang/String;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/nut/blehunter/u;->f()V

    .line 283
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/u;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nut/blehunter/u;->h:Ljava/lang/String;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {p0}, Lcom/nut/blehunter/u;->b()Lcom/nut/blehunter/entity/Position;

    move-result-object v1

    .line 275
    if-nez v1, :cond_1

    .line 276
    new-instance v1, Lcom/nut/blehunter/entity/Position;

    const-wide/16 v2, 0x0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/nut/blehunter/entity/Position;-><init>(JDD)V

    .line 278
    :cond_1
    iget-wide v2, v1, Lcom/nut/blehunter/entity/Position;->d:D

    iget-wide v4, v1, Lcom/nut/blehunter/entity/Position;->c:D

    iget v6, v1, Lcom/nut/blehunter/entity/Position;->h:F

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nut/blehunter/u;->a(DDF)V

    .line 281
    :cond_2
    invoke-virtual {p0}, Lcom/nut/blehunter/u;->e()V

    goto :goto_0
.end method
