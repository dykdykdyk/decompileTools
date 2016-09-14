.class final Lcom/tencent/connect/b/o;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/connect/b/n;


# direct methods
.method constructor <init>(Lcom/tencent/connect/b/n;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/tencent/connect/b/o;->a:Lcom/tencent/connect/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/tencent/connect/b/o;->a:Lcom/tencent/connect/b/n;

    iget-object v0, v0, Lcom/tencent/connect/b/n;->a:Lcom/tencent/connect/b/j;

    invoke-static {v0}, Lcom/tencent/connect/b/j;->e(Lcom/tencent/connect/b/j;)Lcom/tencent/open/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/connect/b/o;->a:Lcom/tencent/connect/b/n;

    iget-object v1, v1, Lcom/tencent/connect/b/n;->a:Lcom/tencent/connect/b/j;

    invoke-static {v1}, Lcom/tencent/connect/b/j;->i(Lcom/tencent/connect/b/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/b;->loadUrl(Ljava/lang/String;)V

    .line 382
    return-void
.end method
