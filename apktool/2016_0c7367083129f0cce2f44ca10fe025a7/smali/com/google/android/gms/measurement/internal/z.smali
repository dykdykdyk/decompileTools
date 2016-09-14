.class final Lcom/google/android/gms/measurement/internal/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/z;->a:Lcom/google/android/gms/measurement/internal/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z;->a:Lcom/google/android/gms/measurement/internal/y;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y;->a:Lcom/google/android/gms/measurement/internal/x;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/x;->f()V

    return-void
.end method
