.class final Lcom/google/android/gms/internal/v;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/s;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/s;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/v;->a:Lcom/google/android/gms/internal/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/s;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/v;-><init>(Lcom/google/android/gms/internal/s;)V

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->a:Lcom/google/android/gms/internal/s;

    invoke-static {v0}, Lcom/google/android/gms/internal/s;->a(Lcom/google/android/gms/internal/s;)Lcom/google/android/gms/common/api/u;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/s;->b(Lcom/google/android/gms/common/api/u;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
