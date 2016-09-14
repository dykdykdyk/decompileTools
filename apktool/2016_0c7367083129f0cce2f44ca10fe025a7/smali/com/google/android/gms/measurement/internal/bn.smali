.class final Lcom/google/android/gms/measurement/internal/bn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/gms/measurement/internal/bm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/bm;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/bn;->b:Lcom/google/android/gms/measurement/internal/bm;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/bn;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bn;->b:Lcom/google/android/gms/measurement/internal/bm;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/bm;->a(Lcom/google/android/gms/measurement/internal/bm;)Lcom/google/android/gms/measurement/internal/ca;

    move-result-object v0

    .line 1000
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->q()V

    .line 0
    return-void
.end method
