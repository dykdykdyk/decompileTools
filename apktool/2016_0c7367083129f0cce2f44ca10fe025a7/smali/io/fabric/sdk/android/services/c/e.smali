.class final Lio/fabric/sdk/android/services/c/e;
.super Ljava/lang/Object;
.source "EventsFilesManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lio/fabric/sdk/android/services/c/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/services/c/d;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/c/d;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lio/fabric/sdk/android/services/c/e;->a:Lio/fabric/sdk/android/services/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 208
    check-cast p1, Lio/fabric/sdk/android/services/c/f;

    check-cast p2, Lio/fabric/sdk/android/services/c/f;

    .line 1211
    iget-wide v0, p1, Lio/fabric/sdk/android/services/c/f;->b:J

    iget-wide v2, p2, Lio/fabric/sdk/android/services/c/f;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 208
    return v0
.end method
