.class public final Lcom/twitter/sdk/android/core/internal/scribe/m;
.super Lcom/twitter/sdk/android/core/internal/scribe/g;
.source "SyndicatedSdkImpressionEvent.java"


# instance fields
.field public final a:Lcom/twitter/sdk/android/core/internal/scribe/n;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "external_ids"
    .end annotation
.end field

.field public final b:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_id_created_at"
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/c;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    const-string v0, "syndicated_sdk_impression"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/twitter/sdk/android/core/internal/scribe/g;-><init>(Ljava/lang/String;Lcom/twitter/sdk/android/core/internal/scribe/c;J)V

    .line 45
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/scribe/m;->c:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/n;

    invoke-direct {v0, p0, p5}, Lcom/twitter/sdk/android/core/internal/scribe/n;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/m;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/m;->a:Lcom/twitter/sdk/android/core/internal/scribe/n;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/m;->b:J

    .line 48
    return-void
.end method
