.class final Lcom/google/android/gms/measurement/internal/af;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/android/gms/common/util/c;

.field b:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/af;->a:Lcom/google/android/gms/common/util/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/af;->a:Lcom/google/android/gms/common/util/c;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/c;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/af;->b:J

    return-void
.end method
