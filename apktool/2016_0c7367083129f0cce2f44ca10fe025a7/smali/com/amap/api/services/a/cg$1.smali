.class Lcom/amap/api/services/a/cg$1;
.super Ljava/lang/Thread;
.source "DynamicClassLoader.java"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/amap/api/services/a/cg;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/cg;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/amap/api/services/a/cg$1;->d:Lcom/amap/api/services/a/cg;

    iput-object p2, p0, Lcom/amap/api/services/a/cg$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/services/a/cg$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/amap/api/services/a/cg$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/cg$1;->d:Lcom/amap/api/services/a/cg;

    iget-object v1, p0, Lcom/amap/api/services/a/cg$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/cg$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/a/cg$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/services/a/cg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    const-string v1, "DynamicClassLoader"

    const-string v2, "run()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
