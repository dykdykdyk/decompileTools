.class final Lcom/google/android/gms/common/internal/ax;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/android/gms/common/internal/ay;

.field final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:Z

.field e:Landroid/os/IBinder;

.field final f:Lcom/google/android/gms/common/internal/aw;

.field g:Landroid/content/ComponentName;

.field final synthetic h:Lcom/google/android/gms/common/internal/av;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/av;Lcom/google/android/gms/common/internal/aw;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ax;->h:Lcom/google/android/gms/common/internal/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/ax;->f:Lcom/google/android/gms/common/internal/aw;

    new-instance v0, Lcom/google/android/gms/common/internal/ay;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/ay;-><init>(Lcom/google/android/gms/common/internal/ax;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/ax;->a:Lcom/google/android/gms/common/internal/ay;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/ax;->b:Ljava/util/Set;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/ax;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/ax;->c:I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ax;->h:Lcom/google/android/gms/common/internal/av;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/av;->c(Lcom/google/android/gms/common/internal/av;)Lcom/google/android/gms/common/stats/a;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ax;->h:Lcom/google/android/gms/common/internal/av;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/av;->b(Lcom/google/android/gms/common/internal/av;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ax;->f:Lcom/google/android/gms/common/internal/aw;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/aw;->a()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ax;->a:Lcom/google/android/gms/common/internal/ay;

    const/16 v3, 0x81

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/ax;->d:Z

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/ax;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/ax;->c:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ax;->h:Lcom/google/android/gms/common/internal/av;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/av;->c(Lcom/google/android/gms/common/internal/av;)Lcom/google/android/gms/common/stats/a;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ax;->h:Lcom/google/android/gms/common/internal/av;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/av;->b(Lcom/google/android/gms/common/internal/av;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ax;->a:Lcom/google/android/gms/common/internal/ay;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Landroid/content/ServiceConnection;)V
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ax;->h:Lcom/google/android/gms/common/internal/av;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/av;->c(Lcom/google/android/gms/common/internal/av;)Lcom/google/android/gms/common/stats/a;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ax;->h:Lcom/google/android/gms/common/internal/av;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/av;->b(Lcom/google/android/gms/common/internal/av;)Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ax;->f:Lcom/google/android/gms/common/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/aw;->a()Landroid/content/Intent;

    .line 1000
    invoke-static {p1}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/ServiceConnection;)Ljava/lang/String;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ax;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ax;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/content/ServiceConnection;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ax;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
