.class final Lcom/google/android/gms/measurement/internal/k;
.super Lcom/google/android/gms/measurement/internal/ar;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/ca;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/k;->a:Lcom/google/android/gms/measurement/internal/i;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/ar;-><init>(Lcom/google/android/gms/measurement/internal/ca;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k;->a:Lcom/google/android/gms/measurement/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->v()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->c:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    return-void
.end method
