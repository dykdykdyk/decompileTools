.class final Lcom/twitter/sdk/android/core/internal/scribe/b;
.super Lio/fabric/sdk/android/services/c/b;
.source "EnabledScribeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/c/b",
        "<",
        "Lcom/twitter/sdk/android/core/internal/scribe/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Lio/fabric/sdk/android/services/c/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/twitter/sdk/android/core/internal/scribe/i;Lcom/twitter/sdk/android/core/internal/scribe/f;Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;)V
    .locals 4

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lio/fabric/sdk/android/services/c/b;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lio/fabric/sdk/android/services/c/d;)V

    .line 17
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/scribe/b;->f:Lio/fabric/sdk/android/services/c/o;

    .line 19
    iget v0, p4, Lcom/twitter/sdk/android/core/internal/scribe/f;->h:I

    .line 1108
    iput v0, p0, Lio/fabric/sdk/android/services/c/b;->e:I

    .line 1109
    const-wide/16 v0, 0x0

    iget v2, p0, Lio/fabric/sdk/android/services/c/b;->e:I

    int-to-long v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/fabric/sdk/android/services/c/b;->a(JJ)V

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Lio/fabric/sdk/android/services/c/o;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/b;->f:Lio/fabric/sdk/android/services/c/o;

    return-object v0
.end method
