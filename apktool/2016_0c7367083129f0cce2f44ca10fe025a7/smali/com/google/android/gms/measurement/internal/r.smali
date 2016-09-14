.class final Lcom/google/android/gms/measurement/internal/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/ba;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/o;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/r;->a:Lcom/google/android/gms/measurement/internal/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/o;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/o;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o;->a(Lcom/google/android/gms/measurement/internal/o;)Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/o;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/o;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->f:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v2, "Connected to remote service"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/o;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o;->c:Lcom/google/android/gms/measurement/internal/i;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/r;->a:Lcom/google/android/gms/measurement/internal/ba;

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/ba;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
