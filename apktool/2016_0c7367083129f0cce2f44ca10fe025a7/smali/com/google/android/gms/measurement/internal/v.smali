.class final Lcom/google/android/gms/measurement/internal/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/v;->a:Lcom/google/android/gms/measurement/internal/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v;->a:Lcom/google/android/gms/measurement/internal/u;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/u;->d:Lcom/google/android/gms/measurement/internal/t;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t;->c:Lcom/google/android/gms/measurement/internal/w;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/v;->a:Lcom/google/android/gms/measurement/internal/u;

    iget v1, v1, Lcom/google/android/gms/measurement/internal/u;->b:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/w;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/am;->N()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v;->a:Lcom/google/android/gms/measurement/internal/u;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/u;->c:Lcom/google/android/gms/measurement/internal/bf;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v1, "Local AppMeasurementService processed last upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
