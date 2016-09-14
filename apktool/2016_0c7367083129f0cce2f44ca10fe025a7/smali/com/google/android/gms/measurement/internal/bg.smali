.class final Lcom/google/android/gms/measurement/internal/bg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/bf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/bf;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/bg;->b:Lcom/google/android/gms/measurement/internal/bf;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/bg;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bg;->b:Lcom/google/android/gms/measurement/internal/bf;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->n:Lcom/google/android/gms/measurement/internal/ca;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->d()Lcom/google/android/gms/measurement/internal/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bp;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bg;->b:Lcom/google/android/gms/measurement/internal/bf;

    const/4 v1, 0x6

    const-string v2, "Persisted config not initialized . Not logging error/warn."

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/bf;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bp;->b:Lcom/google/android/gms/measurement/internal/bs;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/bg;->a:Ljava/lang/String;

    .line 1000
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/bs;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method
