.class final Landroid/support/v7/a/ae;
.super Landroid/content/BroadcastReceiver;
.source "AppCompatDelegateImplV14.java"


# instance fields
.field final synthetic a:Landroid/support/v7/a/ad;


# direct methods
.method constructor <init>(Landroid/support/v7/a/ad;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Landroid/support/v7/a/ae;->a:Landroid/support/v7/a/ad;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/v7/a/ae;->a:Landroid/support/v7/a/ad;

    .line 1310
    iget-object v1, v0, Landroid/support/v7/a/ad;->a:Landroid/support/v7/a/bg;

    invoke-virtual {v1}, Landroid/support/v7/a/bg;->a()Z

    move-result v1

    .line 1311
    iget-boolean v2, v0, Landroid/support/v7/a/ad;->b:Z

    if-eq v1, v2, :cond_0

    .line 1312
    iput-boolean v1, v0, Landroid/support/v7/a/ad;->b:Z

    .line 1313
    iget-object v0, v0, Landroid/support/v7/a/ad;->e:Landroid/support/v7/a/ab;

    invoke-virtual {v0}, Landroid/support/v7/a/ab;->j()Z

    .line 331
    :cond_0
    return-void
.end method
