.class Lcom/amap/api/services/a/bk$a;
.super Ljava/lang/Object;
.source "LogProcessor.java"

# interfaces
.implements Lcom/amap/api/services/a/cm;


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/bk;

.field private b:Lcom/amap/api/services/a/bu;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/bk;Lcom/amap/api/services/a/bu;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/amap/api/services/a/bk$a;->a:Lcom/amap/api/services/a/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p2, p0, Lcom/amap/api/services/a/bk$a;->b:Lcom/amap/api/services/a/bu;

    .line 295
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/bk$a;->b:Lcom/amap/api/services/a/bu;

    iget-object v1, p0, Lcom/amap/api/services/a/bk$a;->a:Lcom/amap/api/services/a/bk;

    .line 301
    invoke-virtual {v1}, Lcom/amap/api/services/a/bk;->b()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/services/a/be;->a(I)Ljava/lang/Class;

    move-result-object v1

    .line 300
    invoke-virtual {v0, p1, v1}, Lcom/amap/api/services/a/bu;->b(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
