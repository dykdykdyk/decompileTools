.class Lcom/google/android/gms/measurement/internal/bm;
.super Landroid/content/BroadcastReceiver;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field final b:Lcom/google/android/gms/measurement/internal/ca;

.field c:Z

.field d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/measurement/internal/bm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/bm;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/ca;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/bm;->b:Lcom/google/android/gms/measurement/internal/ca;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/bm;)Lcom/google/android/gms/measurement/internal/ca;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bm;->b:Lcom/google/android/gms/measurement/internal/ca;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bm;->b:Lcom/google/android/gms/measurement/internal/ca;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bm;->b:Lcom/google/android/gms/measurement/internal/ca;

    .line 5000
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->f()Lcom/google/android/gms/measurement/internal/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bv;->i()V

    .line 6000
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bm;->b:Lcom/google/android/gms/measurement/internal/ca;

    .line 7000
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->f()Lcom/google/android/gms/measurement/internal/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bv;->i()V

    .line 6000
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/bm;->c:Z

    .line 0
    if-nez v0, :cond_0

    :goto_0
    return-void

    .line 8000
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bm;->b:Lcom/google/android/gms/measurement/internal/ca;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->e()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 9000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v1, "Unregistering connectivity change receiver"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/bm;->c:Z

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/bm;->d:Z

    .line 10000
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bm;->b:Lcom/google/android/gms/measurement/internal/ca;

    .line 11000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ca;->a:Landroid/content/Context;

    .line 0
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12000
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/bm;->b:Lcom/google/android/gms/measurement/internal/ca;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ca;->e()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v1

    .line 13000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/bf;->a:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bm;->b:Lcom/google/android/gms/measurement/internal/ca;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->a()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1000
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/bm;->b:Lcom/google/android/gms/measurement/internal/ca;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ca;->e()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v1

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v2, "NetworkBroadcastReceiver received action"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bm;->b:Lcom/google/android/gms/measurement/internal/ca;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->k()Lcom/google/android/gms/measurement/internal/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bi;->e()Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/bm;->d:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/bm;->d:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/bm;->b:Lcom/google/android/gms/measurement/internal/ca;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ca;->f()Lcom/google/android/gms/measurement/internal/bv;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/bn;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/measurement/internal/bn;-><init>(Lcom/google/android/gms/measurement/internal/bm;Z)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/bv;->a(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    .line 3000
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/bm;->b:Lcom/google/android/gms/measurement/internal/ca;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ca;->e()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v1

    .line 4000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/bf;->c:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v2, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
