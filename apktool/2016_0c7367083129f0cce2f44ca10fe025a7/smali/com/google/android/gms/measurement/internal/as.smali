.class final Lcom/google/android/gms/measurement/internal/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/ar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/as;->a:Lcom/google/android/gms/measurement/internal/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/as;->a:Lcom/google/android/gms/measurement/internal/ar;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/ar;->a(Lcom/google/android/gms/measurement/internal/ar;)Lcom/google/android/gms/measurement/internal/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->f()Lcom/google/android/gms/measurement/internal/bv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/bv;->a(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/as;->a:Lcom/google/android/gms/measurement/internal/ar;

    .line 1000
    iget-wide v0, v0, Lcom/google/android/gms/measurement/internal/ar;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 0
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/as;->a:Lcom/google/android/gms/measurement/internal/ar;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/ar;->b(Lcom/google/android/gms/measurement/internal/ar;)J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/as;->a:Lcom/google/android/gms/measurement/internal/ar;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/ar;->c(Lcom/google/android/gms/measurement/internal/ar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/as;->a:Lcom/google/android/gms/measurement/internal/ar;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ar;->a()V

    goto :goto_0

    .line 1000
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
