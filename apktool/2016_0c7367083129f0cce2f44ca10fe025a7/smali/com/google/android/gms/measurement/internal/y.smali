.class final Lcom/google/android/gms/measurement/internal/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/y;->a:Lcom/google/android/gms/measurement/internal/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y;->a:Lcom/google/android/gms/measurement/internal/x;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/x;->u()Lcom/google/android/gms/measurement/internal/bv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/z;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/z;-><init>(Lcom/google/android/gms/measurement/internal/y;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bv;->a(Ljava/lang/Runnable;)V

    return-void
.end method
