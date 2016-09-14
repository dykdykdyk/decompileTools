.class final Lcom/google/android/gms/internal/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aj;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/internal/aa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aa;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ab;->b:Lcom/google/android/gms/internal/aa;

    iput p2, p0, Lcom/google/android/gms/internal/ab;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->b:Lcom/google/android/gms/internal/aa;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/aa;->a:Ljava/util/Queue;

    .line 0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->b:Lcom/google/android/gms/internal/aa;

    iget v1, p0, Lcom/google/android/gms/internal/ab;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aa;->a(IZ)V

    :cond_0
    return-void
.end method
