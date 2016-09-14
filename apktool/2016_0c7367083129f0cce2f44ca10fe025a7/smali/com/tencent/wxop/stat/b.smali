.class final Lcom/tencent/wxop/stat/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/wxop/stat/k;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/tencent/wxop/stat/ai;


# direct methods
.method constructor <init>(Lcom/tencent/wxop/stat/ai;Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/b;->c:Lcom/tencent/wxop/stat/ai;

    iput-object p2, p0, Lcom/tencent/wxop/stat/b;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/tencent/wxop/stat/b;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 0
    invoke-static {}, Lcom/tencent/wxop/stat/v;->b()V

    iget-object v0, p0, Lcom/tencent/wxop/stat/b;->c:Lcom/tencent/wxop/stat/ai;

    iget-object v1, p0, Lcom/tencent/wxop/stat/b;->a:Ljava/util/List;

    iget-boolean v2, p0, Lcom/tencent/wxop/stat/b;->b:Z

    .line 1000
    iget-object v3, v0, Lcom/tencent/wxop/stat/ai;->a:Lcom/tencent/wxop/stat/b/f;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/tencent/wxop/stat/ai;->a:Lcom/tencent/wxop/stat/b/f;

    new-instance v4, Lcom/tencent/wxop/stat/ak;

    invoke-direct {v4, v0, v1, v2}, Lcom/tencent/wxop/stat/ak;-><init>(Lcom/tencent/wxop/stat/ai;Ljava/util/List;Z)V

    invoke-virtual {v3, v4}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    .line 0
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 0
    invoke-static {}, Lcom/tencent/wxop/stat/v;->c()V

    iget-object v0, p0, Lcom/tencent/wxop/stat/b;->c:Lcom/tencent/wxop/stat/ai;

    iget-object v1, p0, Lcom/tencent/wxop/stat/b;->a:Ljava/util/List;

    iget-boolean v2, p0, Lcom/tencent/wxop/stat/b;->b:Z

    .line 2000
    iget-object v3, v0, Lcom/tencent/wxop/stat/ai;->a:Lcom/tencent/wxop/stat/b/f;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/tencent/wxop/stat/ai;->a:Lcom/tencent/wxop/stat/b/f;

    new-instance v4, Lcom/tencent/wxop/stat/aj;

    invoke-direct {v4, v0, v1, v2}, Lcom/tencent/wxop/stat/aj;-><init>(Lcom/tencent/wxop/stat/ai;Ljava/util/List;Z)V

    invoke-virtual {v3, v4}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    .line 0
    :cond_0
    return-void
.end method
