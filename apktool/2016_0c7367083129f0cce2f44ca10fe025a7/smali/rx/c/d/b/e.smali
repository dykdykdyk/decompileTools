.class abstract Lrx/c/d/b/e;
.super Lrx/c/d/b/g;
.source "MpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/c/d/b/g",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final e:J


# instance fields
.field volatile consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-class v0, Lrx/c/d/b/e;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Lrx/c/d/b/y;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/c/d/b/e;->e:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lrx/c/d/b/g;-><init>(I)V

    .line 62
    return-void
.end method
