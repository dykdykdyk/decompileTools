.class final Landroid/support/v7/a/ad;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV14.java"


# instance fields
.field a:Landroid/support/v7/a/bg;

.field b:Z

.field c:Landroid/content/BroadcastReceiver;

.field d:Landroid/content/IntentFilter;

.field final synthetic e:Landroid/support/v7/a/ab;


# direct methods
.method constructor <init>(Landroid/support/v7/a/ab;Landroid/support/v7/a/bg;)V
    .locals 1

    .prologue
    .line 299
    iput-object p1, p0, Landroid/support/v7/a/ad;->e:Landroid/support/v7/a/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p2, p0, Landroid/support/v7/a/ad;->a:Landroid/support/v7/a/bg;

    .line 301
    invoke-virtual {p2}, Landroid/support/v7/a/bg;->a()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/a/ad;->b:Z

    .line 302
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Landroid/support/v7/a/ad;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Landroid/support/v7/a/ad;->e:Landroid/support/v7/a/ab;

    iget-object v0, v0, Landroid/support/v7/a/ab;->b:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/a/ad;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/a/ad;->c:Landroid/content/BroadcastReceiver;

    .line 348
    :cond_0
    return-void
.end method
