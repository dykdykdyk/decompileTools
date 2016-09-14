.class Lcom/amap/api/mapcore2d/dd$a;
.super Ljava/lang/Object;
.source "SDKLogHandler.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/ee;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p1, p0, Lcom/amap/api/mapcore2d/dd$a;->a:Landroid/content/Context;

    .line 278
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dd$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/db;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    const-string v1, "LogNetListener"

    const-string v2, "onNetCompleted"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
