.class public Lcom/nut/blehunter/ui/b/j;
.super Lcom/nut/blehunter/ui/b/i;
.source "GoogleFragment.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/google/android/gms/maps/k;
.implements Lcom/google/android/gms/maps/l;
.implements Lcom/google/android/gms/maps/m;
.implements Lcom/google/android/gms/maps/n;
.implements Lcom/google/android/gms/maps/o;
.implements Lcom/google/android/gms/maps/p;
.implements Lcom/google/android/gms/maps/v;


# instance fields
.field o:Landroid/os/Handler;

.field p:Ljava/lang/Runnable;

.field private q:Lcom/google/android/gms/maps/c;

.field private r:Lcom/google/android/gms/maps/model/d;

.field private s:Lcom/google/android/gms/maps/MapView;

.field private t:Landroid/location/Geocoder;

.field private u:Landroid/location/LocationManager;

.field private v:D

.field private w:D

.field private x:Lcom/nut/blehunter/ui/b/m;

.field private y:Lcom/google/android/gms/maps/q;

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/i;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/j;->o:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/nut/blehunter/ui/b/k;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/k;-><init>(Lcom/nut/blehunter/ui/b/j;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/j;->p:Ljava/lang/Runnable;

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/b/j;)D
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/nut/blehunter/ui/b/j;->v:D

    return-wide v0
.end method

.method static synthetic a(Landroid/location/Address;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/j;->b(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/gms/maps/a;Z)V
    .locals 4

    .prologue
    .line 543
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    if-nez v0, :cond_0

    .line 44000
    :goto_0
    return-void

    .line 546
    :cond_0
    if-eqz p2, :cond_1

    .line 547
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    .line 42000
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    .line 43000
    iget-object v1, p1, Lcom/google/android/gms/maps/a;->a:Lcom/google/android/gms/dynamic/h;

    .line 42000
    const/16 v2, 0x7d0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/dynamic/h;ILcom/google/android/gms/maps/a/bc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    .line 44000
    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    .line 45000
    iget-object v1, p1, Lcom/google/android/gms/maps/a;->a:Lcom/google/android/gms/dynamic/h;

    .line 44000
    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/dynamic/h;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/b/j;)D
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/nut/blehunter/ui/b/j;->w:D

    return-wide v0
.end method

.method private static b(Lcom/nut/blehunter/entity/CustomLatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 6

    .prologue
    .line 538
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    .line 41048
    iget-wide v2, p0, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 41052
    iget-wide v4, p0, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 538
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method private static b(Landroid/location/Address;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 513
    if-nez p0, :cond_0

    .line 514
    const-string v0, ""

    .line 533
    :goto_0
    return-object v0

    .line 517
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 518
    invoke-virtual {p0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v1

    .line 519
    if-le v1, v0, :cond_3

    .line 522
    :goto_1
    if-ltz v0, :cond_2

    .line 523
    invoke-virtual {p0, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 525
    if-eqz v0, :cond_1

    .line 526
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 528
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 529
    goto :goto_1

    .line 530
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    const-string v1, "parseAddress Exception"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, La/a/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    const-string v0, ""

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/b/j;)Landroid/location/Geocoder;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->t:Landroid/location/Geocoder;

    return-object v0
.end method

.method static synthetic d(Lcom/nut/blehunter/ui/b/j;)Lcom/nut/blehunter/ui/b/m;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->x:Lcom/nut/blehunter/ui/b/m;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-class v0, Lcom/nut/blehunter/ui/b/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 211
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    if-nez v0, :cond_0

    .line 212
    const-string v0, "addMarker params is error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    .line 216
    :cond_0
    if-eqz p3, :cond_5

    .line 217
    invoke-static {p3}, Lcom/nut/blehunter/ui/b/j;->c(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/b;->a(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v0

    .line 222
    :goto_1
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 223
    invoke-virtual {p2}, Lcom/nut/blehunter/entity/CustomLatLng;->a()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v2

    invoke-static {v2}, Lcom/nut/blehunter/ui/b/j;->b(Lcom/nut/blehunter/entity/CustomLatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    .line 21000
    iput-object v0, v2, Lcom/google/android/gms/maps/model/MarkerOptions;->e:Lcom/google/android/gms/maps/model/a;

    .line 22000
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/google/android/gms/maps/model/MarkerOptions;->h:Z

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 23000
    iput-object p1, v1, Lcom/google/android/gms/maps/model/MarkerOptions;->c:Ljava/lang/String;

    .line 227
    :cond_1
    if-eqz p3, :cond_2

    .line 24000
    iput v3, v1, Lcom/google/android/gms/maps/model/MarkerOptions;->f:F

    iput v3, v1, Lcom/google/android/gms/maps/model/MarkerOptions;->g:F

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/f;

    move-result-object v0

    .line 231
    invoke-static {p3}, Lcom/nut/blehunter/ui/b/j;->d(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/f;->d()V

    .line 234
    :cond_3
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 235
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/f;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_5
    invoke-static {}, Lcom/google/android/gms/maps/model/b;->a()Lcom/google/android/gms/maps/model/a;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;ILcom/nut/blehunter/entity/Nut;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    const-string v0, "addMarker params is error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    const/4 v0, 0x0

    .line 257
    :goto_0
    return-object v0

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/nut/blehunter/ui/b/j;->a(Landroid/content/Context;ILcom/nut/blehunter/entity/Nut;)Landroid/view/View;

    move-result-object v0

    .line 246
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 247
    invoke-virtual {p2}, Lcom/nut/blehunter/entity/CustomLatLng;->a()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v2

    invoke-static {v2}, Lcom/nut/blehunter/ui/b/j;->b(Lcom/nut/blehunter/entity/CustomLatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/nut/blehunter/d/q;->a(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/b;->a(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/a;

    move-result-object v0

    .line 25000
    iput-object v0, v2, Lcom/google/android/gms/maps/model/MarkerOptions;->e:Lcom/google/android/gms/maps/model/a;

    .line 26000
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/google/android/gms/maps/model/MarkerOptions;->h:Z

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 27000
    iput-object p1, v1, Lcom/google/android/gms/maps/model/MarkerOptions;->c:Ljava/lang/String;

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/f;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 255
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/f;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 262
    :cond_0
    const-string v0, "addMarker params is error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    const/4 v0, 0x0

    .line 277
    :goto_0
    return-object v0

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/nut/blehunter/ui/b/j;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 266
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 267
    invoke-virtual {p2}, Lcom/nut/blehunter/entity/CustomLatLng;->a()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v2

    invoke-static {v2}, Lcom/nut/blehunter/ui/b/j;->b(Lcom/nut/blehunter/entity/CustomLatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/nut/blehunter/d/q;->a(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/b;->a(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/a;

    move-result-object v0

    .line 28000
    iput-object v0, v2, Lcom/google/android/gms/maps/model/MarkerOptions;->e:Lcom/google/android/gms/maps/model/a;

    .line 29000
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/google/android/gms/maps/model/MarkerOptions;->h:Z

    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 30000
    iput-object p1, v1, Lcom/google/android/gms/maps/model/MarkerOptions;->c:Ljava/lang/String;

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/f;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 275
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/f;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(F)V
    .locals 2

    .prologue
    .line 453
    const/high16 v0, 0x40000000    # 2.0f

    sub-float v0, p1, v0

    .line 454
    invoke-static {v0}, Lcom/google/android/gms/maps/b;->a(F)Lcom/google/android/gms/maps/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ui/b/j;->a(Lcom/google/android/gms/maps/a;Z)V

    .line 455
    return-void
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 361
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->r:Lcom/google/android/gms/maps/model/d;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->r:Lcom/google/android/gms/maps/model/d;

    int-to-double v2, p1

    .line 40000
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/maps/model/d;->a:Lcom/google/android/gms/maps/model/a/g;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/maps/model/a/g;->a(D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40180
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->s:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 40181
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->s:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->invalidate()V

    .line 365
    :cond_0
    return-void

    .line 40000
    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/c;)V
    .locals 6

    .prologue
    .line 595
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    .line 45492
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_0

    .line 45493
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    .line 46000
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45494
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    .line 47000
    if-nez p0, :cond_2

    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/cy;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 45495
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    .line 48000
    if-nez p0, :cond_3

    :try_start_2
    iget-object v0, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/dh;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 45496
    :goto_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    .line 49000
    if-nez p0, :cond_4

    :try_start_3
    iget-object v0, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/cj;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 45497
    :goto_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    .line 50000
    if-nez p0, :cond_5

    :try_start_4
    iget-object v0, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/bi;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 45498
    :goto_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    .line 51000
    if-nez p0, :cond_6

    :try_start_5
    iget-object v0, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/bl;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 45500
    :cond_0
    :goto_4
    new-instance v0, Landroid/location/Geocoder;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/j;->t:Landroid/location/Geocoder;

    .line 597
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;)Lcom/nut/blehunter/entity/Position;

    move-result-object v0

    .line 598
    if-eqz v0, :cond_1

    .line 599
    new-instance v1, Lcom/nut/blehunter/entity/CustomLatLng;

    iget-wide v2, v0, Lcom/nut/blehunter/entity/Position;->d:D

    iget-wide v4, v0, Lcom/nut/blehunter/entity/Position;->c:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DD)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/b/j;->a(Lcom/nut/blehunter/entity/CustomLatLng;Z)V

    .line 601
    :cond_1
    return-void

    .line 46000
    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 47000
    :cond_2
    :try_start_6
    iget-object v1, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    new-instance v2, Lcom/google/android/gms/maps/d;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/maps/d;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/n;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/cy;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 48000
    :cond_3
    :try_start_7
    iget-object v1, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    new-instance v2, Lcom/google/android/gms/maps/h;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/maps/h;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/o;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/dh;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 49000
    :cond_4
    :try_start_8
    iget-object v1, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    new-instance v2, Lcom/google/android/gms/maps/i;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/maps/i;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/m;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/cj;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 50000
    :cond_5
    :try_start_9
    iget-object v1, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    new-instance v2, Lcom/google/android/gms/maps/j;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/maps/j;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/k;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/bi;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 51000
    :cond_6
    :try_start_a
    iget-object v1, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    new-instance v2, Lcom/google/android/gms/maps/g;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/maps/g;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/l;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/bl;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 7

    .prologue
    .line 643
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->b:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    iput-wide v0, p0, Lcom/nut/blehunter/ui/b/j;->v:D

    .line 647
    iget-object v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->c:D

    iput-wide v0, p0, Lcom/nut/blehunter/ui/b/j;->w:D

    .line 648
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->n:Lcom/nut/blehunter/ui/b/p;

    if-eqz v0, :cond_2

    .line 649
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->n:Lcom/nut/blehunter/ui/b/p;

    new-instance v1, Lcom/nut/blehunter/entity/CustomLatLng;

    iget-wide v2, p0, Lcom/nut/blehunter/ui/b/j;->v:D

    iget-wide v4, p0, Lcom/nut/blehunter/ui/b/j;->w:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DDB)V

    invoke-interface {v0, v1}, Lcom/nut/blehunter/ui/b/p;->b(Lcom/nut/blehunter/entity/CustomLatLng;)V

    .line 652
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/j;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 653
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/j;->p:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/maps/q;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/j;->y:Lcom/google/android/gms/maps/q;

    .line 564
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/j;->d()V

    .line 565
    return-void
.end method

.method public final a(Lcom/nut/blehunter/entity/CustomLatLng;)V
    .locals 1

    .prologue
    .line 421
    new-instance v0, Lcom/nut/blehunter/ui/b/l;

    invoke-direct {v0, p0, p1}, Lcom/nut/blehunter/ui/b/l;-><init>(Lcom/nut/blehunter/ui/b/j;Lcom/nut/blehunter/entity/CustomLatLng;)V

    .line 447
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 448
    return-void
.end method

.method public final a(Lcom/nut/blehunter/entity/CustomLatLng;D)V
    .locals 6

    .prologue
    const/16 v5, 0x32

    .line 356
    invoke-virtual {p1}, Lcom/nut/blehunter/entity/CustomLatLng;->a()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/j;->b(Lcom/nut/blehunter/entity/CustomLatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 34554
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    if-eqz v1, :cond_0

    .line 34555
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    new-instance v2, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 35000
    iput-object v0, v2, Lcom/google/android/gms/maps/model/CircleOptions;->b:Lcom/google/android/gms/maps/model/LatLng;

    .line 36000
    iput-wide p2, v2, Lcom/google/android/gms/maps/model/CircleOptions;->c:D

    .line 34555
    const/16 v0, 0x2c

    const/16 v3, 0x9b

    const/16 v4, 0x7a

    invoke-static {v5, v0, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 37000
    iput v0, v2, Lcom/google/android/gms/maps/model/CircleOptions;->e:I

    .line 34555
    const/16 v0, 0x44

    const/16 v3, 0xc6

    const/16 v4, 0x97

    invoke-static {v5, v0, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 38000
    iput v0, v2, Lcom/google/android/gms/maps/model/CircleOptions;->f:I

    .line 39000
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, v2, Lcom/google/android/gms/maps/model/CircleOptions;->d:F

    .line 34555
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/j;->r:Lcom/google/android/gms/maps/model/d;

    .line 357
    :cond_0
    return-void
.end method

.method public final a(Lcom/nut/blehunter/entity/CustomLatLng;Z)V
    .locals 5

    .prologue
    .line 322
    :try_start_0
    invoke-virtual {p1}, Lcom/nut/blehunter/entity/CustomLatLng;->a()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/j;->b(Lcom/nut/blehunter/entity/CustomLatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 323
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    .line 324
    invoke-static {v1}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/a;

    move-result-object v0

    .line 325
    invoke-direct {p0, v0, p2}, Lcom/nut/blehunter/ui/b/j;->a(Lcom/google/android/gms/maps/a;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/f;

    .line 31000
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/maps/model/f;->a:Lcom/google/android/gms/maps/model/a/p;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/p;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_0
    return-void

    .line 31000
    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    if-eqz p2, :cond_1

    .line 293
    invoke-static {p2}, Lcom/nut/blehunter/ui/b/j;->c(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/b;->a(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v0

    move-object v1, v0

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/f;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/f;->a(Lcom/google/android/gms/maps/model/a;)V

    .line 299
    :cond_0
    return-void

    .line 295
    :cond_1
    invoke-static {}, Lcom/google/android/gms/maps/model/b;->a()Lcom/google/android/gms/maps/model/a;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILcom/nut/blehunter/entity/Nut;)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 304
    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/nut/blehunter/ui/b/j;->a(Landroid/content/Context;ILcom/nut/blehunter/entity/Nut;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/q;->a(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/b;->a(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/a;

    move-result-object v1

    .line 306
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/f;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/f;->a(Lcom/google/android/gms/maps/model/a;)V

    .line 308
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/nut/blehunter/ui/b/j;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/q;->a(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/b;->a(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/a;

    move-result-object v1

    .line 315
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/f;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/f;->a(Lcom/google/android/gms/maps/model/a;)V

    .line 317
    :cond_2
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/CustomLatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 333
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 337
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/CustomLatLng;

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/b/j;->a(Lcom/nut/blehunter/entity/CustomLatLng;Z)V

    goto :goto_0

    .line 340
    :cond_1
    new-instance v3, Lcom/google/android/gms/maps/model/e;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/e;-><init>()V

    .line 341
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/CustomLatLng;

    .line 342
    invoke-virtual {v0}, Lcom/nut/blehunter/entity/CustomLatLng;->a()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/j;->b(Lcom/nut/blehunter/entity/CustomLatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 32000
    iget-wide v6, v3, Lcom/google/android/gms/maps/model/e;->a:D

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, v3, Lcom/google/android/gms/maps/model/e;->a:D

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/e;->b:D

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iput-wide v6, v3, Lcom/google/android/gms/maps/model/e;->b:D

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->c:D

    iget-wide v8, v3, Lcom/google/android/gms/maps/model/e;->c:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-wide v6, v3, Lcom/google/android/gms/maps/model/e;->c:D

    :cond_3
    iput-wide v6, v3, Lcom/google/android/gms/maps/model/e;->d:D

    goto :goto_1

    .line 33000
    :cond_4
    iget-wide v8, v3, Lcom/google/android/gms/maps/model/e;->c:D

    iget-wide v10, v3, Lcom/google/android/gms/maps/model/e;->d:D

    cmpg-double v0, v8, v10

    if-gtz v0, :cond_6

    iget-wide v8, v3, Lcom/google/android/gms/maps/model/e;->c:D

    cmpg-double v0, v8, v6

    if-gtz v0, :cond_5

    iget-wide v8, v3, Lcom/google/android/gms/maps/model/e;->d:D

    cmpg-double v0, v6, v8

    if-gtz v0, :cond_5

    move v0, v1

    .line 32000
    :goto_2
    if-nez v0, :cond_2

    iget-wide v8, v3, Lcom/google/android/gms/maps/model/e;->c:D

    invoke-static {v8, v9, v6, v7}, Lcom/google/android/gms/maps/model/LatLngBounds;->a(DD)D

    move-result-wide v8

    iget-wide v10, v3, Lcom/google/android/gms/maps/model/e;->d:D

    invoke-static {v10, v11, v6, v7}, Lcom/google/android/gms/maps/model/LatLngBounds;->b(DD)D

    move-result-wide v10

    cmpg-double v0, v8, v10

    if-gez v0, :cond_3

    iput-wide v6, v3, Lcom/google/android/gms/maps/model/e;->c:D

    goto :goto_1

    :cond_5
    move v0, v2

    .line 33000
    goto :goto_2

    :cond_6
    iget-wide v8, v3, Lcom/google/android/gms/maps/model/e;->c:D

    cmpg-double v0, v8, v6

    if-lez v0, :cond_7

    iget-wide v8, v3, Lcom/google/android/gms/maps/model/e;->d:D

    cmpg-double v0, v6, v8

    if-gtz v0, :cond_8

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_2

    .line 34000
    :cond_9
    :try_start_0
    iget-wide v4, v3, Lcom/google/android/gms/maps/model/e;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_3
    const-string v1, "no included points"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/d;->a(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/e;->a:D

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/e;->c:D

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/e;->b:D

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/e;->d:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 347
    invoke-static {v0}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/a;

    move-result-object v0

    .line 348
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ui/b/j;->a(Lcom/google/android/gms/maps/a;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 350
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 34000
    goto :goto_3
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/nut/blehunter/ui/b/j;->g:Z

    .line 479
    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/f;)Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 630
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/b/j;->f:Z

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/f;->d()V

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->k:Lcom/nut/blehunter/ui/b/v;

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->k:Lcom/nut/blehunter/ui/b/v;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/f;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/f;->c()Ljava/lang/String;

    new-instance v1, Lcom/nut/blehunter/entity/CustomLatLng;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/f;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/f;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->c:D

    invoke-direct/range {v1 .. v6}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DDB)V

    invoke-interface {v0, v7, v1}, Lcom/nut/blehunter/ui/b/v;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;)V

    .line 638
    :cond_1
    return v6
.end method

.method public final b(I)F
    .locals 1

    .prologue
    .line 460
    const/16 v0, 0xc8

    if-gt p1, v0, :cond_0

    .line 461
    const/high16 v0, 0x41880000    # 17.0f

    .line 473
    :goto_0
    return v0

    .line 462
    :cond_0
    const/16 v0, 0x1f4

    if-gt p1, v0, :cond_1

    .line 463
    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_0

    .line 464
    :cond_1
    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_2

    .line 465
    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 466
    :cond_2
    const/16 v0, 0x7d0

    if-gt p1, v0, :cond_3

    .line 467
    const/high16 v0, 0x41600000    # 14.0f

    goto :goto_0

    .line 468
    :cond_3
    const/16 v0, 0xfa0

    if-gt p1, v0, :cond_4

    .line 469
    const/high16 v0, 0x41500000    # 13.0f

    goto :goto_0

    .line 471
    :cond_4
    const/high16 v0, 0x41400000    # 12.0f

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 569
    iput-object v1, p0, Lcom/nut/blehunter/ui/b/j;->y:Lcom/google/android/gms/maps/q;

    .line 570
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->u:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->u:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 573
    :cond_0
    iput-object v1, p0, Lcom/nut/blehunter/ui/b/j;->u:Landroid/location/LocationManager;

    .line 574
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 378
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 379
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->t:Landroid/location/Geocoder;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 384
    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    .line 385
    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    .line 386
    invoke-static {v0}, Lcom/nut/blehunter/ui/b/j;->b(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 392
    :catch_0
    move-exception v0

    const-string v1, "requestInputTips Exception"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, La/a/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 388
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->l:Lcom/nut/blehunter/ui/b/r;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->l:Lcom/nut/blehunter/ui/b/r;

    invoke-interface {v0, v1}, Lcom/nut/blehunter/ui/b/r;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->u:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->u:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 190
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 399
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 400
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->t:Landroid/location/Geocoder;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 405
    new-instance v1, Lcom/nut/blehunter/entity/CustomLatLng;

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DDB)V

    .line 407
    invoke-static {v0}, Lcom/nut/blehunter/ui/b/j;->b(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v0

    .line 408
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/nut/blehunter/ui/b/j;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;I)Ljava/lang/String;

    .line 409
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 415
    :catch_0
    move-exception v0

    const-string v1, "doSearchQuery Exception"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, La/a/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 411
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    invoke-virtual {p0, v7}, Lcom/nut/blehunter/ui/b/j;->a(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final d()V
    .locals 6

    .prologue
    .line 194
    .line 20199
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->u:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 20200
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/j;->u:Landroid/location/LocationManager;

    .line 20203
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->u:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, -0x1

    const/high16 v4, 0x41c80000    # 25.0f

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20206
    :goto_0
    return-void

    .line 20205
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->r:Lcom/google/android/gms/maps/model/d;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->r:Lcom/google/android/gms/maps/model/d;

    .line 41000
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/maps/model/d;->a:Lcom/google/android/gms/maps/model/a/g;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/g;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/j;->r:Lcom/google/android/gms/maps/model/d;

    .line 373
    :cond_0
    return-void

    .line 41000
    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final f_()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    .line 20000
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/d;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 176
    :cond_0
    return-void

    .line 20000
    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final g_()V
    .locals 3

    .prologue
    .line 608
    .line 51001
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_0

    .line 51002
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    .line 51008
    if-nez p0, :cond_2

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/g;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51003
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->a()Lcom/google/android/gms/maps/w;

    move-result-object v0

    .line 51009
    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/maps/w;->a:Lcom/google/android/gms/maps/a/ab;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/ab;->c(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51005
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->q:Lcom/google/android/gms/maps/c;

    iget-boolean v1, p0, Lcom/nut/blehunter/ui/b/j;->g:Z

    .line 51010
    :try_start_2
    iget-object v0, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->c(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->h:Lcom/nut/blehunter/ui/b/s;

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->h:Lcom/nut/blehunter/ui/b/s;

    invoke-interface {v0}, Lcom/nut/blehunter/ui/b/s;->p()V

    .line 612
    :cond_1
    return-void

    .line 51008
    :cond_2
    :try_start_3
    iget-object v1, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/d;

    new-instance v2, Lcom/google/android/gms/maps/e;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/maps/e;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/p;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/g;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 51009
    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 51010
    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b/i;->onCreate(Landroid/os/Bundle;)V

    .line 116
    new-instance v0, Lcom/nut/blehunter/ui/b/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nut/blehunter/ui/b/m;-><init>(Lcom/nut/blehunter/ui/b/j;B)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/j;->x:Lcom/nut/blehunter/ui/b/m;

    .line 117
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, -0x2

    .line 122
    const v0, 0x7f03006f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1482
    const v0, 0x7f0d01a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/j;->s:Lcom/google/android/gms/maps/MapView;

    .line 1483
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->s:Lcom/google/android/gms/maps/MapView;

    .line 2000
    iget-object v2, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/t;

    .line 3000
    new-instance v3, Lcom/google/android/gms/dynamic/d;

    invoke-direct {v3, v2, p3}, Lcom/google/android/gms/dynamic/d;-><init>(Lcom/google/android/gms/dynamic/b;Landroid/os/Bundle;)V

    invoke-virtual {v2, p3, v3}, Lcom/google/android/gms/dynamic/b;->a(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/g;)V

    .line 2000
    iget-object v2, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/t;

    .line 4000
    iget-object v2, v2, Lcom/google/android/gms/dynamic/b;->a:Lcom/google/android/gms/dynamic/a;

    .line 2000
    if-nez v2, :cond_0

    .line 5000
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzbv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/internal/am;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/am;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v5, :cond_0

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/google/android/gms/dynamic/e;

    invoke-direct {v4, v2, v3}, Lcom/google/android/gms/dynamic/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1484
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/u;->a(Landroid/content/Context;)I

    .line 1485
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->s:Lcom/google/android/gms/maps/MapView;

    .line 6000
    const-string v2, "getMapAsync() must be called on the main thread"

    invoke-static {v2}, Lcom/google/android/gms/common/internal/d;->b(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/t;

    .line 8000
    iget-object v2, v0, Lcom/google/android/gms/dynamic/b;->a:Lcom/google/android/gms/dynamic/a;

    .line 7000
    if-eqz v2, :cond_1

    .line 9000
    iget-object v0, v0, Lcom/google/android/gms/dynamic/b;->a:Lcom/google/android/gms/dynamic/a;

    .line 7000
    check-cast v0, Lcom/google/android/gms/maps/r;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/r;->a(Lcom/google/android/gms/maps/v;)V

    .line 124
    :goto_0
    return-object v1

    .line 7000
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/maps/t;->e:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->u:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->u:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->s:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->s:Lcom/google/android/gms/maps/MapView;

    .line 10000
    iget-object v0, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/t;

    .line 11000
    iget-object v1, v0, Lcom/google/android/gms/dynamic/b;->a:Lcom/google/android/gms/dynamic/a;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/dynamic/b;->a:Lcom/google/android/gms/dynamic/a;

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/a;->c()V

    .line 135
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/nut/blehunter/ui/b/i;->onDestroy()V

    .line 136
    return-void

    .line 11000
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/dynamic/b;->a(I)V

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    .prologue
    .line 578
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 579
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 580
    iget-object v4, p0, Lcom/nut/blehunter/ui/b/j;->y:Lcom/google/android/gms/maps/q;

    if-eqz v4, :cond_1

    .line 581
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/nut/blehunter/u;->a(DD)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 582
    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/d/f;->a(DD)[D

    move-result-object v4

    .line 583
    const/4 v5, 0x0

    aget-wide v6, v4, v5

    invoke-virtual {p1, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 584
    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-virtual {p1, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 586
    :cond_0
    iget-object v4, p0, Lcom/nut/blehunter/ui/b/j;->y:Lcom/google/android/gms/maps/q;

    invoke-interface {v4, p1}, Lcom/google/android/gms/maps/q;->a(Landroid/location/Location;)V

    .line 588
    :cond_1
    iget-object v4, p0, Lcom/nut/blehunter/ui/b/j;->i:Lcom/nut/blehunter/ui/b/t;

    if-eqz v4, :cond_2

    .line 589
    iget-object v4, p0, Lcom/nut/blehunter/ui/b/j;->i:Lcom/nut/blehunter/ui/b/t;

    new-instance v5, Lcom/nut/blehunter/entity/CustomLatLng;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DD)V

    invoke-interface {v4, v5}, Lcom/nut/blehunter/ui/b/t;->a(Lcom/nut/blehunter/entity/CustomLatLng;)V

    .line 591
    :cond_2
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/nut/blehunter/ui/b/i;->onLowMemory()V

    .line 159
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->s:Lcom/google/android/gms/maps/MapView;

    .line 18000
    iget-object v0, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/t;

    .line 19000
    iget-object v1, v0, Lcom/google/android/gms/dynamic/b;->a:Lcom/google/android/gms/dynamic/a;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/dynamic/b;->a:Lcom/google/android/gms/dynamic/a;

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/a;->d()V

    .line 160
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/nut/blehunter/ui/b/i;->onPause()V

    .line 147
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->s:Lcom/google/android/gms/maps/MapView;

    .line 14000
    iget-object v0, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/t;

    .line 15000
    iget-object v1, v0, Lcom/google/android/gms/dynamic/b;->a:Lcom/google/android/gms/dynamic/a;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/dynamic/b;->a:Lcom/google/android/gms/dynamic/a;

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/a;->b()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/dynamic/b;->a(I)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 676
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 680
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 152
    invoke-super {p0}, Lcom/nut/blehunter/ui/b/i;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->s:Lcom/google/android/gms/maps/MapView;

    .line 16000
    iget-object v0, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/t;

    .line 17000
    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/dynamic/f;

    invoke-direct {v2, v0}, Lcom/google/android/gms/dynamic/f;-><init>(Lcom/google/android/gms/dynamic/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/dynamic/b;->a(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/g;)V

    .line 154
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b/i;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/j;->s:Lcom/google/android/gms/maps/MapView;

    .line 12000
    iget-object v0, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/t;

    .line 13000
    iget-object v1, v0, Lcom/google/android/gms/dynamic/b;->a:Lcom/google/android/gms/dynamic/a;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/dynamic/b;->a:Lcom/google/android/gms/dynamic/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/dynamic/a;->b(Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/dynamic/b;->b:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/dynamic/b;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 684
    return-void
.end method
