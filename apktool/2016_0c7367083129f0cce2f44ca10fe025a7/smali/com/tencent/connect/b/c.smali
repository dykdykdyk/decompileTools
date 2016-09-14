.class final Lcom/tencent/connect/b/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tencent/connect/b/b;


# direct methods
.method constructor <init>(Lcom/tencent/connect/b/b;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/tencent/connect/b/c;->b:Lcom/tencent/connect/b/b;

    iput-object p2, p0, Lcom/tencent/connect/b/c;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 291
    new-instance v0, Lcom/tencent/connect/b/j;

    iget-object v1, p0, Lcom/tencent/connect/b/c;->a:Landroid/app/Activity;

    const-string v2, "action_login"

    iget-object v3, p0, Lcom/tencent/connect/b/c;->b:Lcom/tencent/connect/b/b;

    iget-object v3, v3, Lcom/tencent/connect/b/b;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/connect/b/c;->b:Lcom/tencent/connect/b/b;

    iget-object v4, v4, Lcom/tencent/connect/b/b;->b:Lcom/tencent/tauth/b;

    iget-object v5, p0, Lcom/tencent/connect/b/c;->b:Lcom/tencent/connect/b/b;

    iget-object v5, v5, Lcom/tencent/connect/b/b;->c:Lcom/tencent/connect/b/a;

    invoke-static {v5}, Lcom/tencent/connect/b/a;->f(Lcom/tencent/connect/b/a;)Lcom/tencent/connect/b/v;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/connect/b/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/b;Lcom/tencent/connect/b/v;)V

    .line 292
    iget-object v1, p0, Lcom/tencent/connect/b/c;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/connect/b/c;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/tencent/connect/b/j;->show()V

    .line 295
    :cond_0
    return-void
.end method
