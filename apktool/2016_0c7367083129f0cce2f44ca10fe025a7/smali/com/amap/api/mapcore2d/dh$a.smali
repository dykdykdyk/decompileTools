.class Lcom/amap/api/mapcore2d/dh$a;
.super Ljava/lang/Object;
.source "LogProcessor.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/dx;


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/dh;

.field private b:Lcom/amap/api/mapcore2d/dr;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/dh;Lcom/amap/api/mapcore2d/dr;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/amap/api/mapcore2d/dh$a;->a:Lcom/amap/api/mapcore2d/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/amap/api/mapcore2d/dh$a;->b:Lcom/amap/api/mapcore2d/dr;

    .line 265
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh$a;->b:Lcom/amap/api/mapcore2d/dr;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/dh$a;->a:Lcom/amap/api/mapcore2d/dh;

    .line 271
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dh;->b()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/mapcore2d/db;->a(I)Ljava/lang/Class;

    move-result-object v1

    .line 270
    invoke-virtual {v0, p1, v1}, Lcom/amap/api/mapcore2d/dr;->b(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
