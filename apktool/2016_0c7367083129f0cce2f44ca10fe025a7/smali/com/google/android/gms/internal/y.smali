.class final Lcom/google/android/gms/internal/y;
.super Ljava/lang/ref/PhantomReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference",
        "<",
        "Lcom/google/android/gms/common/api/y",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final a:I

.field final synthetic b:Lcom/google/android/gms/internal/x;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/x;Lcom/google/android/gms/common/api/y;ILjava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/y;",
            "I",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/gms/common/api/y",
            "<*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/y;->b:Lcom/google/android/gms/internal/x;

    invoke-direct {p0, p2, p4}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput p3, p0, Lcom/google/android/gms/internal/y;->a:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/y;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/y;->a:I

    return v0
.end method
