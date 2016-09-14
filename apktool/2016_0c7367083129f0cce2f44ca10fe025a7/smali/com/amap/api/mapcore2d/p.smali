.class public Lcom/amap/api/mapcore2d/p;
.super Ljava/lang/Object;
.source "ConfigableConst.java"


# static fields
.field public static a:F

.field public static b:Ljava/lang/String;

.field public static c:I

.field public static d:I

.field public static final e:Lcom/amap/api/mapcore2d/p$a;

.field public static final f:[Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:I

.field public static j:I

.field public static k:I

.field static l:I

.field static m:I

.field static n:I

.field public static volatile o:Lcom/amap/api/mapcore2d/cv;

.field static p:Z

.field static q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    const v0, 0x3f666666    # 0.9f

    sput v0, Lcom/amap/api/mapcore2d/p;->a:F

    .line 21
    const-string v0, ""

    sput-object v0, Lcom/amap/api/mapcore2d/p;->b:Ljava/lang/String;

    .line 24
    const/16 v0, 0x13

    sput v0, Lcom/amap/api/mapcore2d/p;->c:I

    .line 25
    const/4 v0, 0x3

    sput v0, Lcom/amap/api/mapcore2d/p;->d:I

    .line 26
    sget-object v0, Lcom/amap/api/mapcore2d/p$a;->a:Lcom/amap/api/mapcore2d/p$a;

    sput-object v0, Lcom/amap/api/mapcore2d/p;->e:Lcom/amap/api/mapcore2d/p$a;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.amap.api.mapcore2d"

    aput-object v1, v0, v2

    const-string v1, "com.amap.api.maps2d"

    aput-object v1, v0, v3

    sput-object v0, Lcom/amap/api/mapcore2d/p;->f:[Ljava/lang/String;

    .line 46
    const/16 v0, 0x100

    sput v0, Lcom/amap/api/mapcore2d/p;->i:I

    .line 58
    const/16 v0, 0x15

    sput v0, Lcom/amap/api/mapcore2d/p;->j:I

    .line 64
    sput v2, Lcom/amap/api/mapcore2d/p;->l:I

    .line 77
    sput v2, Lcom/amap/api/mapcore2d/p;->m:I

    .line 78
    sput v2, Lcom/amap/api/mapcore2d/p;->n:I

    .line 86
    sput-boolean v3, Lcom/amap/api/mapcore2d/p;->p:Z

    .line 91
    sput-boolean v3, Lcom/amap/api/mapcore2d/p;->q:Z

    return-void
.end method
