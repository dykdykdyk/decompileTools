.class final Lcom/google/android/gms/measurement/internal/cm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/measurement/internal/ai;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/AppMetadata;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/cf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/cf;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/cm;->b:Lcom/google/android/gms/measurement/internal/cf;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/cm;->a:Lcom/google/android/gms/measurement/internal/AppMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/cm;->b:Lcom/google/android/gms/measurement/internal/cf;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/cf;->a(Lcom/google/android/gms/measurement/internal/cf;)Lcom/google/android/gms/measurement/internal/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->r()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/cm;->b:Lcom/google/android/gms/measurement/internal/cf;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/cf;->a(Lcom/google/android/gms/measurement/internal/cf;)Lcom/google/android/gms/measurement/internal/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->j()Lcom/google/android/gms/measurement/internal/an;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/cm;->a:Lcom/google/android/gms/measurement/internal/AppMetadata;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/an;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 0
    return-object v0
.end method
