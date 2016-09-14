.class public final Lcom/google/android/gms/measurement/internal/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/ca;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/gms/measurement/internal/bf;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/t;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/t;Lcom/google/android/gms/measurement/internal/ca;ILcom/google/android/gms/measurement/internal/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u;->d:Lcom/google/android/gms/measurement/internal/t;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/u;->a:Lcom/google/android/gms/measurement/internal/ca;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/u;->b:I

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/u;->c:Lcom/google/android/gms/measurement/internal/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u;->a:Lcom/google/android/gms/measurement/internal/ca;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->r()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u;->a:Lcom/google/android/gms/measurement/internal/ca;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->p()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u;->d:Lcom/google/android/gms/measurement/internal/t;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t;->a:Landroid/os/Handler;

    .line 0
    new-instance v1, Lcom/google/android/gms/measurement/internal/v;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/v;-><init>(Lcom/google/android/gms/measurement/internal/u;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
