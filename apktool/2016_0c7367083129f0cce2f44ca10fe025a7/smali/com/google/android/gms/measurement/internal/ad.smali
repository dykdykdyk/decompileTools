.class final Lcom/google/android/gms/measurement/internal/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/android/gms/measurement/internal/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/x;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ad;->b:Lcom/google/android/gms/measurement/internal/x;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/ad;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ad;->b:Lcom/google/android/gms/measurement/internal/x;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/ad;->a:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/x;->b(Lcom/google/android/gms/measurement/internal/x;J)V

    return-void
.end method
