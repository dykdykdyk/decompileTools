.class public final Lcom/google/android/gms/maps/model/e;
.super Ljava/lang/Object;


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/e;->a:D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/e;->b:D

    iput-wide v2, p0, Lcom/google/android/gms/maps/model/e;->c:D

    iput-wide v2, p0, Lcom/google/android/gms/maps/model/e;->d:D

    return-void
.end method
