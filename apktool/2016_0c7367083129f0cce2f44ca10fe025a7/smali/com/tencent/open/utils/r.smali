.class final Lcom/tencent/open/utils/r;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/tencent/open/utils/q;


# direct methods
.method constructor <init>(Lcom/tencent/open/utils/q;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/tencent/open/utils/r;->b:Lcom/tencent/open/utils/q;

    iput-object p2, p0, Lcom/tencent/open/utils/r;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/utils/r;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    iget-object v0, p0, Lcom/tencent/open/utils/r;->b:Lcom/tencent/open/utils/q;

    invoke-virtual {v0}, Lcom/tencent/open/utils/q;->a()V

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/open/utils/r;->b:Lcom/tencent/open/utils/q;

    invoke-virtual {v1}, Lcom/tencent/open/utils/q;->a()V

    throw v0
.end method
