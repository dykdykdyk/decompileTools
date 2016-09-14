.class public final Lcom/twitter/sdk/android/core/internal/scribe/n;
.super Ljava/lang/Object;
.source "SyndicatedSdkImpressionEvent.java"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AD_ID"
    .end annotation
.end field

.field final synthetic b:Lcom/twitter/sdk/android/core/internal/scribe/m;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/m;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/n;->b:Lcom/twitter/sdk/android/core/internal/scribe/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/n;->a:Ljava/lang/String;

    .line 65
    return-void
.end method
