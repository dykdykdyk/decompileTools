.class public final Lcom/nut/blehunter/dfu/e;
.super Ljava/lang/Object;
.source "DfuHelper.java"


# direct methods
.method public static a(Landroid/support/v4/app/FragmentActivity;ILcom/nut/blehunter/entity/i;Lcom/nut/blehunter/ui/b/a/d;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 49
    invoke-static {p0, v6}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Z)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nut/blehunter/d/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/nut/blehunter/entity/i;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/nut/blehunter/dfu/f;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/nut/blehunter/dfu/f;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/nut/blehunter/entity/i;ILcom/nut/blehunter/ui/b/a/d;)V

    sget-object v2, Lio/fabric/sdk/android/services/concurrency/a;->b:Ljava/util/concurrent/Executor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p2, Lcom/nut/blehunter/entity/i;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/nut/blehunter/dfu/f;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 53
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    const v0, 0x7f0600b4

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    const v1, 0x7f0600e0

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    new-instance v2, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {v2, v4}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const v1, 0x7f060093

    invoke-virtual {v0, v1, p2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const v1, 0x7f060083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    const-string v1, "dfu"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 45
    return-void
.end method
