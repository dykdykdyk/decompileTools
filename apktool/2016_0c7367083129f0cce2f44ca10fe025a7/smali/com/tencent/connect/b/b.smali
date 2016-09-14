.class final Lcom/tencent/connect/b/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/tauth/b;

.field final synthetic c:Lcom/tencent/connect/b/a;


# direct methods
.method constructor <init>(Lcom/tencent/connect/b/a;Ljava/lang/String;Lcom/tencent/tauth/b;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/tencent/connect/b/b;->c:Lcom/tencent/connect/b/a;

    iput-object p2, p0, Lcom/tencent/connect/b/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/connect/b/b;->b:Lcom/tencent/tauth/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 282
    sget-object v0, Lcom/tencent/connect/b/a;->a:Ljava/lang/String;

    sget-object v1, Lcom/tencent/connect/b/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/open/utils/o;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 285
    iget-object v0, p0, Lcom/tencent/connect/b/b;->c:Lcom/tencent/connect/b/a;

    invoke-static {v0}, Lcom/tencent/connect/b/a;->e(Lcom/tencent/connect/b/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 286
    if-eqz v0, :cond_0

    .line 287
    new-instance v1, Lcom/tencent/connect/b/c;

    invoke-direct {v1, p0, v0}, Lcom/tencent/connect/b/c;-><init>(Lcom/tencent/connect/b/b;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 298
    :cond_0
    return-void
.end method
